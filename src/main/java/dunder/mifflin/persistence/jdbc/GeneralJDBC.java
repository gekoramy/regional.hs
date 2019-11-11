package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.GeneralDAO;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.jdbc.generics.JDBC;
import dunder.mifflin.persistence.pojos.General;
import org.jooq.DSLContext;
import org.jooq.impl.DSL;

import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistence.jdbc.jooq.Tables.*;
import static dunder.mifflin.persistence.jdbc.utils.Queries.*;

public class GeneralJDBC extends JDBC implements GeneralDAO {

    public GeneralJDBC(DSLContext context) {
        super(context);
    }

    @Override
    public Optional<General> follows(long patient) {
        return currentGeneral(patient).apply(context);
    }

    @Override
    public Stream<General> suitable(long patient, String name, String email, String fc) throws DAOException {
        final var current = DSL.select(FOLLOWS.GENERAL)
                .from(FOLLOWS)
                .innerJoin(current()).on(FOLLOWS.ID.eq(uncheckedField(current(), FOLLOWS.ID)))
                .where(FOLLOWS.PATIENT.eq(patient));

        final var gen = PERSON.as("g");
        final var pat = PERSON.as("p");

        return context
                .select(gen.asterisk().except(gen.PASSWORD), GENERAL.WORKPLACE)
                .from(pat)
                .innerJoin(CITY).on(pat.RESIDENCE.eq(CITY.ID))
                .innerJoin(GENERAL).on(CITY.PROVINCE.eq(GENERAL.WORKPLACE))
                .innerJoin(gen).on(GENERAL.ID.eq(gen.ID))
                .where(pat.ID.eq(patient))
                .and(gen.ID.notEqual(patient))
                .and(gen.ID.notEqual(current))
                .and(DSL.concat(gen.NAME.concat(" "), gen.SURNAME).containsIgnoreCase(name))
                .and(gen.EMAIL.containsIgnoreCase(email))
                .and(gen.FC.containsIgnoreCase(fc))
                .orderBy(gen.NAME)
                .fetchStreamInto(General.class);
    }

    @Override
    public General entrusts(long patient, long general) throws DAOException {
        return context.transactionResult((config) -> {

            currentGeneral(patient).apply(DSL.using(config))
                    .filter((g) -> !g.id().equals(general))
                    .orElseThrow(
                            () -> new DAOException(String.format(
                                    "general %d is already following the patient %d",
                                    general,
                                    patient
                            ))
                    );

            DSL.using(config)
                    .select()
                    .from(PERSON)
                    .innerJoin(CITY).on(PERSON.RESIDENCE.eq(CITY.ID))
                    .innerJoin(GENERAL).on(CITY.PROVINCE.eq(GENERAL.WORKPLACE))
                    .where(PERSON.ID.eq(patient))
                    .and(GENERAL.ID.eq(general))
                    .fetchOptional()
                    .orElseThrow(
                            () -> new DAOException(String.format(
                                    "general %d is not suitable for the patient %d",
                                    general,
                                    patient
                            ))
                    );

            DSL.using(config)
                    .insertInto(FOLLOWS)
                    .columns(FOLLOWS.GENERAL, FOLLOWS.PATIENT)
                    .values(general, patient)
                    .execute();

            return currentGeneral(patient).apply(DSL.using(config)).orElseThrow(
                    () -> new DAOException("uncovered case")
            );
        });
    }

    @Override
    public Optional<General> undo(long patient) throws DAOException {
        return context.transactionResult((config) -> {
            final var general = currentGeneral(patient).apply(DSL.using(config));

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
    public Map<Long, General> generals(Long... follows) throws DAOException {
        return context
                .select(FOLLOWS.ID, PERSON.asterisk().except(PERSON.PASSWORD), GENERAL.WORKPLACE)
                .from(PERSON)
                .innerJoin(GENERAL).on(PERSON.ID.eq(GENERAL.ID))
                .innerJoin(FOLLOWS).on(PERSON.ID.eq(FOLLOWS.GENERAL))
                .where(FOLLOWS.ID.in(follows))
                .fetchMap(FOLLOWS.ID, (r) -> new General(
                        r.get(PERSON.ID),
                        r.get(PERSON.EMAIL),
                        r.get(PERSON.NAME),
                        r.get(PERSON.SURNAME),
                        r.get(PERSON.BIRTHDAY),
                        r.get(PERSON.BIRTHPLACE),
                        r.get(PERSON.FC),
                        r.get(PERSON.GENDER),
                        r.get(PERSON.RESIDENCE),
                        r.get(GENERAL.WORKPLACE)
                ));
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
                .orderBy(PERSON.NAME)
                .fetchStreamInto(General.class);
    }
}
