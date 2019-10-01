package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.SpecialistDAO;
import dunder.mifflin.persistance.jdbc.generics.JDBC;
import dunder.mifflin.persistance.pojos.Specialist;
import org.jooq.DSLContext;

import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistance.jdbc.jooq.Tables.PERSON;
import static dunder.mifflin.persistance.jdbc.jooq.Tables.SPECIALIST;

public class SpecialistJDBC extends JDBC implements SpecialistDAO {

    public SpecialistJDBC(DSLContext context) {
        super(context);
    }

    @Override
    public long count() {
        return context
                .fetchCount(SPECIALIST);
    }

    @Override
    public Optional<Specialist> byKey(Long key) {
        return context
                .select(PERSON.asterisk().except(PERSON.PASSWORD))
                .from(PERSON)
                .naturalJoin(SPECIALIST)
                .where(SPECIALIST.ID.eq(key))
                .fetchOptionalInto(Specialist.class);
    }

    @Override
    public Stream<Specialist> fetchAll() {
        return context
                .select(PERSON.asterisk().except(PERSON.PASSWORD))
                .from(PERSON)
                .naturalJoin(SPECIALIST)
                .fetchStreamInto(Specialist.class);
    }
}
