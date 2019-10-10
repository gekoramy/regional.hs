package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.GeneralDAO;
import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.jdbc.generics.JDBC;
import dunder.mifflin.persistance.pojos.General;
import dunder.mifflin.persistance.pojos.Person;
import org.jooq.DSLContext;
import org.jooq.impl.DSL;

import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistance.jdbc.jooq.Tables.*;
import static dunder.mifflin.persistance.jdbc.utils.Queries.actual;

public class GeneralJDBC extends JDBC implements GeneralDAO {

    public GeneralJDBC(DSLContext context) {
        super(context);
    }

    @Override
    public Optional<General> follows(long patient) {
        return actual(patient).apply(context);
    }

    @Override
    public Stream<General> suitable(long patient, String name, String email, String fc) throws DAOException {
        return context.transactionResult((config) -> {
            final var actual = actual(patient).apply(DSL.using(config)).map(Person::id).orElse(null);

            return DSL.using(config)
                    .select(PERSON.as("g").asterisk().except(PERSON.as("g").PASSWORD), GENERAL.WORKPLACE)
                    .from(PERSON.as("p"))
                    .innerJoin(CITY).on(PERSON.as("p").RESIDENCE.eq(CITY.ID))
                    .innerJoin(GENERAL).on(CITY.PROVINCE.eq(GENERAL.WORKPLACE))
                    .innerJoin(PERSON.as("g")).on(GENERAL.ID.eq(PERSON.as("g").ID))
                    .where(PERSON.as("p").ID.eq(patient))
                    .and(PERSON.as("g").ID.notEqual(patient))
                    .and(PERSON.as("g").ID.notEqual(actual))
                    .and(DSL.concat(PERSON.as("g").NAME.concat(" "), PERSON.as("g").SURNAME).containsIgnoreCase(name))
                    .and(PERSON.as("g").EMAIL.containsIgnoreCase(email))
                    .and(PERSON.as("g").FC.containsIgnoreCase(fc))
                    .fetchStreamInto(General.class);
        });
    }

    @Override
    public General entrusts(long patient, long general) throws DAOException {
        return context.transactionResult((config) -> {
            final var already = actual(patient).apply(DSL.using(config));

            if (already.filter((g) -> g.id().equals(general)).isPresent()) {
                throw new DAOException(String.format(
                        "general %d is already follows the patient %d",
                        general,
                        patient
                ));
            }

            if (
                    DSL.using(config)
                            .select()
                            .from(PERSON)
                            .innerJoin(CITY).on(PERSON.RESIDENCE.eq(CITY.ID))
                            .innerJoin(GENERAL).on(CITY.PROVINCE.eq(GENERAL.WORKPLACE))
                            .where(PERSON.ID.eq(patient))
                            .and(GENERAL.ID.eq(general))
                            .fetchOptional()
                            .isEmpty()
            )
                throw new DAOException(String.format(
                        "general %d is not suitable for the patient %d",
                        general,
                        patient
                ));

            DSL.using(config)
                    .insertInto(FOLLOWS)
                    .columns(FOLLOWS.GENERAL, FOLLOWS.PATIENT)
                    .values(general, patient)
                    .execute();

            return DSL.using(config)
                    .select(PERSON.asterisk().except(PERSON.PASSWORD), GENERAL.WORKPLACE)
                    .from(FOLLOWS)
                    .innerJoin(PERSON).on(FOLLOWS.GENERAL.eq(PERSON.ID))
                    .innerJoin(GENERAL).on(FOLLOWS.GENERAL.eq(GENERAL.ID))
                    .where(FOLLOWS.PATIENT.eq(patient))
                    .orderBy(FOLLOWS.SINCE.desc())
                    .limit(1)
                    .fetchOneInto(General.class);
        });
    }

    @Override
    public Optional<General> undo(long patient) throws DAOException {
        return context.transactionResult((config) -> {
            final var general = actual(patient).apply(DSL.using(config));

            general.ifPresent(
                    (g) -> DSL.using(config)
                            .deleteFrom(FOLLOWS)
                            .where(FOLLOWS.PATIENT.eq(patient))
                            .and(FOLLOWS.GENERAL.eq(g.id()))
                            .orderBy(FOLLOWS.SINCE)
                            .limit(1)
                            .execute()
            );

            return general;
        });
    }

    @Override
    public Optional<General> general(long follows) throws DAOException {
        return context
                .select(PERSON.asterisk().except(PERSON.PASSWORD), GENERAL.WORKPLACE)
                .from(PERSON)
                .naturalJoin(GENERAL)
                .innerJoin(FOLLOWS).on(PERSON.ID.eq(FOLLOWS.GENERAL))
                .where(FOLLOWS.ID.eq(follows))
                .fetchOptionalInto(General.class);
    }

    @Override
    public long count() {
        return context
                .fetchCount(GENERAL);
    }

    @Override
    public Optional<General> byKey(Long key) {
        return context
                .select(PERSON.asterisk().except(PERSON.PASSWORD), GENERAL.WORKPLACE)
                .from(PERSON)
                .naturalJoin(GENERAL)
                .where(GENERAL.ID.eq(key))
                .fetchOptionalInto(General.class);
    }

    @Override
    public Map<Long, General> byKeys(Long... keys) throws DAOException {
        return context
                .select(PERSON.asterisk().except(PERSON.PASSWORD), GENERAL.WORKPLACE)
                .from(PERSON)
                .naturalJoin(GENERAL)
                .where(GENERAL.ID.in(keys))
                .fetchMap(GENERAL.ID, General.class);
    }

    @Override
    public Stream<General> fetchAll() {
        return context
                .select(PERSON.asterisk().except(PERSON.PASSWORD), GENERAL.WORKPLACE)
                .from(PERSON)
                .naturalJoin(GENERAL)
                .fetchStreamInto(General.class);
    }
}
