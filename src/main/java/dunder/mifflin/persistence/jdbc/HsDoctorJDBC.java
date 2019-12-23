package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.HsDoctorDAO;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.jdbc.generics.JDBC;
import dunder.mifflin.persistence.pojos.HsDoctor;
import org.jooq.DSLContext;

import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistence.jdbc.jooq.Tables.HS_DOCTOR;
import static dunder.mifflin.persistence.jdbc.jooq.Tables.PERSON;

public class HsDoctorJDBC extends JDBC implements HsDoctorDAO {

    public HsDoctorJDBC(DSLContext context) {
        super(context);
    }

    @Override
    public long count() {
        return context
                .fetchCount(HS_DOCTOR);
    }

    @Override
    public Optional<HsDoctor> byKey(Long key) {
        return context
                .select(PERSON.asterisk().except(PERSON.PASSWORD), HS_DOCTOR.WORKPLACE)
                .from(PERSON)
                .naturalJoin(HS_DOCTOR)
                .where(HS_DOCTOR.ID.eq(key))
                .fetchOptionalInto(HsDoctor.class);
    }

    @Override
    public Map<Long, HsDoctor> byKeys(Long... keys) throws DAOException {
        return context
                .select(PERSON.asterisk().except(PERSON.PASSWORD), HS_DOCTOR.WORKPLACE)
                .from(PERSON)
                .naturalJoin(HS_DOCTOR)
                .where(HS_DOCTOR.ID.in(keys))
                .fetchMap(HS_DOCTOR.ID, HsDoctor.class);
    }

    @Override
    public Stream<HsDoctor> fetchAll() {
        return context
                .select(PERSON.asterisk().except(PERSON.PASSWORD), HS_DOCTOR.WORKPLACE)
                .from(PERSON)
                .naturalJoin(HS_DOCTOR)
                .orderBy(PERSON.NAME)
                .fetchInto(HsDoctor.class)
                .stream();
    }
}
