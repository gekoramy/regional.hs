package dunder.mifflin.persistance.jdbc.utils;

import dunder.mifflin.persistance.pojos.Prescription;
import org.jooq.DSLContext;

import java.util.function.Function;

import static dunder.mifflin.persistance.jdbc.jooq.Tables.*;
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
                    .select(FOLLOWS.ID, max(FOLLOWS.SINCE).as("_"))
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

}
