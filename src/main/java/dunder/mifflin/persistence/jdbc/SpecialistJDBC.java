package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.SpecialistDAO;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.jdbc.generics.JDBC;
import dunder.mifflin.persistence.pojos.Specialist;
import org.jooq.DSLContext;

import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistence.jdbc.jooq.Tables.PERSON;
import static dunder.mifflin.persistence.jdbc.jooq.Tables.SPECIALIST;

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
    public Map<Long, Specialist> byKeys(Long... keys) throws DAOException {
        return context
                .select(PERSON.asterisk().except(PERSON.PASSWORD))
                .from(PERSON)
                .naturalJoin(SPECIALIST)
                .where(SPECIALIST.ID.in(keys))
                .fetchMap(SPECIALIST.ID, Specialist.class);
    }

    @Override
    public Stream<Specialist> fetchAll() {
        return context
                .select(PERSON.asterisk().except(PERSON.PASSWORD))
                .from(PERSON)
                .naturalJoin(SPECIALIST)
                .orderBy(PERSON.NAME)
                .fetchInto(Specialist.class)
                .stream();
    }
}
