package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.SpExamDAO;
import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.jdbc.generics.JDBC;
import dunder.mifflin.persistance.pojos.SpExam;
import org.jooq.DSLContext;

import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistance.jdbc.jooq.Tables.*;

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
                .fetchStreamInto(SpExam.class);
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
    public Stream<SpExam> fetchAll() throws DAOException {
        return context
                .select(EXAMINATION.asterisk())
                .from(EXAMINATION)
                .naturalJoin(SP_EXAM)
                .fetchStreamInto(SpExam.class);
    }
}
