package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.SpExamDAO;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.jdbc.generics.JDBC;
import dunder.mifflin.persistence.pojos.SpExam;
import org.jooq.DSLContext;

import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistence.jdbc.jooq.Tables.*;

public class SpExamJDBC extends JDBC implements SpExamDAO {

    public SpExamJDBC(DSLContext context) {
        super(context);
    }

    @Override
    public Stream<SpExam> qualifiedFor(long specialist) throws DAOException {
        return context
                .select(EXAMINATION.asterisk())
                .from(EXAMINATION)
                .naturalJoin(SP_EXAM)
                .innerJoin(SP_QUALIFICATION).on(SP_EXAM.ID.eq(SP_QUALIFICATION.EXAM))
                .where(SP_QUALIFICATION.SPECIALIST.eq(specialist))
                .fetchInto(SpExam.class)
                .stream();
    }

    @Override
    public Stream<SpExam> contains(String pattern) throws DAOException {
        return context
                .select(EXAMINATION.asterisk())
                .from(EXAMINATION)
                .naturalJoin(SP_EXAM)
                .where(EXAMINATION.NAME.containsIgnoreCase(pattern))
                .or(EXAMINATION.INFO.containsIgnoreCase(pattern))
                .fetchInto(SpExam.class)
                .stream();
    }

    @Override
    public long count() throws DAOException {
        return context
                .fetchCount(SP_EXAM);
    }

    @Override
    public Optional<SpExam> byKey(Long key) throws DAOException {
        return context
                .select(EXAMINATION.asterisk())
                .from(EXAMINATION)
                .naturalJoin(SP_EXAM)
                .where(SP_EXAM.ID.eq(key))
                .fetchOptionalInto(SpExam.class);
    }

    @Override
    public Map<Long, SpExam> byKeys(Long... keys) throws DAOException {
        return context
                .select(EXAMINATION.asterisk())
                .from(EXAMINATION)
                .naturalJoin(SP_EXAM)
                .where(SP_EXAM.ID.in(keys))
                .fetchMap(SP_EXAM.ID, SpExam.class);
    }

    @Override
    public Stream<SpExam> fetchAll() throws DAOException {
        return context
                .select(EXAMINATION.asterisk())
                .from(EXAMINATION)
                .naturalJoin(SP_EXAM)
                .fetchInto(SpExam.class)
                .stream();
    }
}
