package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.HsExamDAO;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.jdbc.generics.JDBC;
import dunder.mifflin.persistence.pojos.HsExam;
import org.jooq.DSLContext;

import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistence.jdbc.jooq.Tables.*;

public class HsExamJDBC extends JDBC implements HsExamDAO {

    public HsExamJDBC(DSLContext context) {
        super(context);
    }

    @Override
    public Stream<HsExam> qualifiedFor(long hsDoctor) {
        return context
                .select(EXAMINATION.asterisk())
                .from(EXAMINATION)
                .naturalJoin(HS_EXAM)
                .innerJoin(HS_QUALIFICATION).on(HS_EXAM.ID.eq(HS_QUALIFICATION.EXAM))
                .where(HS_QUALIFICATION.DOCTOR.eq(hsDoctor))
                .fetchStreamInto(HsExam.class);
    }

    @Override
    public Stream<HsExam> contains(String pattern) throws DAOException {
        return context
                .select(EXAMINATION.asterisk())
                .from(EXAMINATION)
                .naturalJoin(HS_EXAM)
                .where(EXAMINATION.NAME.containsIgnoreCase(pattern))
                .or(EXAMINATION.INFO.containsIgnoreCase(pattern))
                .fetchStreamInto(HsExam.class);
    }

    @Override
    public long count() {
        return context
                .fetchCount(HS_EXAM);
    }

    @Override
    public Optional<HsExam> byKey(Long key) {
        return context
                .select(EXAMINATION.asterisk())
                .from(EXAMINATION)
                .naturalJoin(HS_EXAM)
                .where(HS_EXAM.ID.eq(key))
                .fetchOptionalInto(HsExam.class);
    }

    @Override
    public Map<Long, HsExam> byKeys(Long... keys) throws DAOException {
        return context
                .select(EXAMINATION.asterisk())
                .from(EXAMINATION)
                .naturalJoin(HS_EXAM)
                .where(HS_EXAM.ID.in(keys))
                .fetchMap(HS_EXAM.ID, HsExam.class);
    }

    @Override
    public Stream<HsExam> fetchAll() {
        return context
                .select(EXAMINATION.asterisk())
                .from(EXAMINATION)
                .naturalJoin(HS_EXAM)
                .fetchStreamInto(HsExam.class);
    }
}
