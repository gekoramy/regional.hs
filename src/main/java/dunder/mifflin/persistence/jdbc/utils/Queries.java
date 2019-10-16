package dunder.mifflin.persistence.jdbc.utils;

import dunder.mifflin.persistence.pojos.General;
import dunder.mifflin.persistence.pojos.Prescription;
import org.jooq.DSLContext;

import java.util.Optional;
import java.util.function.Function;

import static dunder.mifflin.persistence.jdbc.jooq.Tables.*;
import static org.jooq.impl.DSL.max;

public class Queries {

    public static Function<DSLContext, Prescription> prescription(long patient) {
        return (dsl) -> {
            final var place = dsl
                    .select(CITY.PROVINCE)
                    .from(CITY)
                    .innerJoin(PERSON).on(CITY.ID.eq(PERSON.RESIDENCE))
                    .where(PERSON.ID.eq(patient))
                    .fetchOne(CITY.PROVINCE);

            final var concerns = dsl
                    .select(FOLLOWS.ID, max(FOLLOWS.SINCE).as("ignore"))
                    .from(FOLLOWS)
                    .where(FOLLOWS.PATIENT.eq(patient))
                    .groupBy(FOLLOWS.ID, FOLLOWS.SINCE)
                    .fetchOne(FOLLOWS.ID);

            return dsl
                    .insertInto(PRESCRIPTION)
                    .columns(PRESCRIPTION.PLACE, PRESCRIPTION.CONCERNS)
                    .values(place, concerns)
                    .returning(PRESCRIPTION.asterisk())
                    .fetchOptional()
                    .map((r) -> new Prescription(
                            r.get(PRESCRIPTION.ID),
                            r.get(PRESCRIPTION.PLACE),
                            r.get(PRESCRIPTION.DATE),
                            r.get(PRESCRIPTION.CONCERNS)
                    ))
                    .get();
        };
    }

    public static Function<DSLContext, Optional<General>> actual(long patient) {
        return (dsl) -> dsl
                .select(PERSON.asterisk().except(PERSON.PASSWORD), GENERAL.WORKPLACE)
                .from(FOLLOWS)
                .innerJoin(PERSON).on(FOLLOWS.GENERAL.eq(PERSON.ID))
                .innerJoin(GENERAL).on(FOLLOWS.GENERAL.eq(GENERAL.ID))
                .where(FOLLOWS.PATIENT.eq(patient))
                .orderBy(FOLLOWS.SINCE.desc())
                .limit(1)
                .fetchOptionalInto(General.class);
    }
}
