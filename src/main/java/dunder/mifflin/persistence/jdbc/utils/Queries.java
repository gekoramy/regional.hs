package dunder.mifflin.persistence.jdbc.utils;

import dunder.mifflin.persistence.pojos.General;
import dunder.mifflin.persistence.pojos.Prescription;
import org.jooq.*;
import org.jooq.impl.DSL;

import java.time.OffsetDateTime;
import java.util.Optional;
import java.util.function.Function;

import static dunder.mifflin.persistence.jdbc.jooq.Tables.*;
import static org.jooq.impl.DSL.max;

public class Queries {

    public static Function<DSLContext, Prescription> prescription(long patient) {
        return (dsl) -> dsl
                .insertInto(PRESCRIPTION)
                .columns(PRESCRIPTION.PLACE, PRESCRIPTION.CONCERNS)
                .values(place(patient).apply(dsl), current(patient).apply(dsl))
                .returning(PRESCRIPTION.asterisk())
                .fetchOne()
                .map((r) -> new Prescription(
                        r.get(PRESCRIPTION.ID),
                        r.get(PRESCRIPTION.PLACE),
                        r.get(PRESCRIPTION.DATE),
                        r.get(PRESCRIPTION.CONCERNS)
                ));
    }

    public static Table<Record1<Long>> current() {

        final Table<Record2<Long, OffsetDateTime>> tmp = DSL
                .select(
                        FOLLOWS.PATIENT.as(FOLLOWS.PATIENT.getUnqualifiedName()),
                        max(FOLLOWS.SINCE).as(FOLLOWS.SINCE.getUnqualifiedName())
                )
                .from(FOLLOWS)
                .groupBy(FOLLOWS.PATIENT)
                .asTable();

        return DSL
                .select(FOLLOWS.ID)
                .from(FOLLOWS)
                .innerJoin(tmp)
                .on(DSL.and(
                        FOLLOWS.SINCE.eq(uncheckedField(tmp, FOLLOWS.SINCE)),
                        FOLLOWS.PATIENT.eq(uncheckedField(tmp, FOLLOWS.PATIENT))
                ))
                .asTable();
    }

    public static Function<DSLContext, Optional<General>> currentGeneral(long patient) {
        return (dsl) -> dsl
                .select(PERSON.asterisk().except(PERSON.PASSWORD), GENERAL.WORKPLACE)
                .from(FOLLOWS)
                .innerJoin(current()).on(FOLLOWS.ID.eq(uncheckedField(current(), FOLLOWS.ID)))
                .innerJoin(PERSON).on(FOLLOWS.GENERAL.eq(PERSON.ID))
                .innerJoin(GENERAL).on(FOLLOWS.GENERAL.eq(GENERAL.ID))
                .where(FOLLOWS.PATIENT.eq(patient))
                .fetchOptionalInto(General.class);
    }

    public static Function<DSLContext, Long> current(long patient) {
        return (dsl) -> dsl
                .select(FOLLOWS.ID)
                .from(FOLLOWS)
                .innerJoin(current()).on(FOLLOWS.ID.eq(uncheckedField(current(), FOLLOWS.ID)))
                .where(FOLLOWS.PATIENT.eq(patient))
                .fetchOne(FOLLOWS.ID);
    }

    public static Function<DSLContext, Long> place(long patient) {
        return (dsl) -> dsl
                .select(CITY.PROVINCE)
                .from(CITY)
                .innerJoin(PERSON).on(CITY.ID.eq(PERSON.RESIDENCE))
                .where(PERSON.ID.eq(patient))
                .fetchOne(CITY.PROVINCE);
    }

    public static <T> Field<T> uncheckedField(Table<?> table, Field<T> field) {
        return table.field(field.getUnqualifiedName()).cast(field);
    }
}
