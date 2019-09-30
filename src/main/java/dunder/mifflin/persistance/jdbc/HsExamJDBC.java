package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.HsExamDAO;
import dunder.mifflin.persistance.jdbc.generics.JDBC;
import dunder.mifflin.persistance.pojos.HsExam;
import org.jooq.DSLContext;

import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistance.jdbc.jooq.Tables.*;

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
    public Stream<HsExam> fetchAll() {
        return context
                .select(EXAMINATION.asterisk())
                .from(EXAMINATION)
                .naturalJoin(HS_EXAM)
                .fetchStreamInto(HsExam.class);
    }
}
