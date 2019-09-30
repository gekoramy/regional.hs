package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.ExamPrescriptionDAO;
import dunder.mifflin.persistance.jdbc.generics.JDBC;
import dunder.mifflin.persistance.jdbc.utils.Queries;
import dunder.mifflin.persistance.pojos.ExamPrescription;
import org.jooq.DSLContext;
import org.jooq.impl.DSL;

import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistance.jdbc.jooq.Tables.*;

public class ExamPrescriptionJDBC extends JDBC implements ExamPrescriptionDAO {

    public ExamPrescriptionJDBC(DSLContext context) {
        super(context);
    }

    @Override
    public ExamPrescription insert(long patient, long exam) {
        return context.transactionResult((config) -> {

            if (DSL.using(config).fetchExists(SP_EXAM, SP_EXAM.ID.eq(exam))) {

                final var prescription = Queries.prescription(patient).apply(DSL.using(config));

                return DSL.using(config)
                        .insertInto(PR_SP_EXAM)
                        .columns(PR_SP_EXAM.PRESCRIPTION, PR_SP_EXAM.EXAM)
                        .values(prescription.id(), exam)
                        .returning(PR_SP_EXAM.asterisk())
                        .fetchOptional()
                        .map((r) -> new ExamPrescription(
                                prescription.id(),
                                prescription.place(),
                                prescription.date(),
                                prescription.concerns(),
                                r.get(PR_SP_EXAM.EXAM)
                        ))
                        .get();
            }

            if (DSL.using(config).fetchExists(HS_EXAM, HS_EXAM.ID.eq(exam))) {

                final var prescription = Queries.prescription(patient).apply(DSL.using(config));

                return DSL.using(config)
                        .insertInto(PR_HS_EXAM)
                        .columns(PR_HS_EXAM.PRESCRIPTION, PR_HS_EXAM.EXAM)
                        .values(prescription.id(), exam)
                        .returning(PR_HS_EXAM.asterisk())
                        .fetchOptional()
                        .map((r) -> new ExamPrescription(
                                prescription.id(),
                                prescription.place(),
                                prescription.date(),
                                prescription.concerns(),
                                r.get(PR_HS_EXAM.EXAM)
                        ))
                        .get();
            }

            throw new IllegalArgumentException(String.format("There is no examination with id : %d", exam));
        });
    }

    @Override
    public Optional<ExamPrescription> remove(long prescription) {
        final var prExam = context
                .deleteFrom(PR_SP_EXAM)
                .where(PR_SP_EXAM.PRESCRIPTION.eq(prescription))
                .returning(PR_SP_EXAM.EXAM)
                .fetchOptional()
                .map((r) -> r.get(PR_SP_EXAM.EXAM));

        final var prHsExam = context
                .deleteFrom(PR_HS_EXAM)
                .where(PR_HS_EXAM.PRESCRIPTION.eq(prescription))
                .returning(PR_HS_EXAM.EXAM)
                .fetchOptional()
                .map((r) -> r.get(PR_HS_EXAM.EXAM));

        return prExam
                .or(() -> prHsExam)
                .flatMap((exam) -> context
                        .deleteFrom(PRESCRIPTION)
                        .where(PRESCRIPTION.ID.eq(prescription))
                        .returning(PRESCRIPTION.asterisk())
                        .fetchOptional()
                        .map((r) -> new ExamPrescription(
                                r.get(PRESCRIPTION.ID),
                                r.get(PRESCRIPTION.PLACE),
                                r.get(PRESCRIPTION.DATE),
                                r.get(PRESCRIPTION.CONCERNS),
                                exam
                        ))
                );
    }

    @Override
    public Stream<ExamPrescription> concerns(long patient) {
        return context
                .select(PRESCRIPTION.asterisk(), PR_SP_EXAM.asterisk(), PR_HS_EXAM.asterisk())
                .from(PRESCRIPTION)
                .leftJoin(PR_SP_EXAM).on(PRESCRIPTION.ID.eq(PR_SP_EXAM.PRESCRIPTION))
                .leftJoin(PR_HS_EXAM).on(PRESCRIPTION.ID.eq(PR_HS_EXAM.PRESCRIPTION))
                .innerJoin(FOLLOWS).on(PRESCRIPTION.CONCERNS.eq(FOLLOWS.ID))
                .where(PR_SP_EXAM.EXAM.isNotNull().or(PR_HS_EXAM.EXAM.isNotNull()))
                .and(FOLLOWS.PATIENT.eq(patient))
                .orderBy(PRESCRIPTION.DATE)
                .fetchStream()
                .map((r) -> new ExamPrescription(
                        r.get(PRESCRIPTION.ID),
                        r.get(PRESCRIPTION.PLACE),
                        r.get(PRESCRIPTION.DATE),
                        r.get(PRESCRIPTION.CONCERNS),
                        r.get(PR_SP_EXAM.EXAM) == null ? r.get(PR_HS_EXAM.EXAM) : r.get(PR_SP_EXAM.EXAM)
                ));
    }

    @Override
    public Stream<ExamPrescription> prescribedBy(long general) {
        return context
                .select(PRESCRIPTION.asterisk(), PR_SP_EXAM.asterisk(), PR_HS_EXAM.asterisk())
                .from(PRESCRIPTION)
                .leftJoin(PR_SP_EXAM).on(PRESCRIPTION.ID.eq(PR_SP_EXAM.PRESCRIPTION))
                .leftJoin(PR_HS_EXAM).on(PRESCRIPTION.ID.eq(PR_HS_EXAM.PRESCRIPTION))
                .innerJoin(FOLLOWS).on(PRESCRIPTION.CONCERNS.eq(FOLLOWS.ID))
                .where(PR_SP_EXAM.EXAM.isNotNull().or(PR_HS_EXAM.EXAM.isNotNull()))
                .and(FOLLOWS.GENERAL.eq(general))
                .orderBy(PRESCRIPTION.DATE)
                .fetchStream()
                .map((r) -> new ExamPrescription(
                        r.get(PRESCRIPTION.ID),
                        r.get(PRESCRIPTION.PLACE),
                        r.get(PRESCRIPTION.DATE),
                        r.get(PRESCRIPTION.CONCERNS),
                        r.get(PR_SP_EXAM.EXAM) == null ? r.get(PR_HS_EXAM.EXAM) : r.get(PR_SP_EXAM.EXAM)
                ));
    }

    @Override
    public Stream<ExamPrescription> tookIn(long province) {
        return context
                .select(PRESCRIPTION.asterisk(), PR_SP_EXAM.asterisk(), PR_HS_EXAM.asterisk())
                .from(PRESCRIPTION)
                .leftJoin(PR_SP_EXAM).on(PRESCRIPTION.ID.eq(PR_SP_EXAM.PRESCRIPTION))
                .leftJoin(PR_HS_EXAM).on(PRESCRIPTION.ID.eq(PR_HS_EXAM.PRESCRIPTION))
                .where(PR_SP_EXAM.EXAM.isNotNull().or(PR_HS_EXAM.EXAM.isNotNull()))
                .and(PRESCRIPTION.PLACE.eq(province))
                .orderBy(PRESCRIPTION.DATE)
                .fetchStream()
                .map((r) -> new ExamPrescription(
                        r.get(PRESCRIPTION.ID),
                        r.get(PRESCRIPTION.PLACE),
                        r.get(PRESCRIPTION.DATE),
                        r.get(PRESCRIPTION.CONCERNS),
                        r.get(PR_SP_EXAM.EXAM) == null ? r.get(PR_HS_EXAM.EXAM) : r.get(PR_SP_EXAM.EXAM)
                ));
    }

    @Override
    public long count() {
        return context.fetchCount(PR_SP_EXAM) + context.fetchCount(PR_HS_EXAM);
    }

    @Override
    public Optional<ExamPrescription> byKey(Long key) {
        return context
                .select(PRESCRIPTION.asterisk(), PR_SP_EXAM.asterisk(), PR_HS_EXAM.asterisk())
                .from(PRESCRIPTION)
                .leftJoin(PR_SP_EXAM).on(PRESCRIPTION.ID.eq(PR_SP_EXAM.PRESCRIPTION))
                .leftJoin(PR_HS_EXAM).on(PRESCRIPTION.ID.eq(PR_HS_EXAM.PRESCRIPTION))
                .where(PR_SP_EXAM.EXAM.isNotNull().or(PR_HS_EXAM.EXAM.isNotNull()))
                .and(PRESCRIPTION.ID.eq(key))
                .fetchOptional((r) -> new ExamPrescription(
                        r.get(PRESCRIPTION.ID),
                        r.get(PRESCRIPTION.PLACE),
                        r.get(PRESCRIPTION.DATE),
                        r.get(PRESCRIPTION.CONCERNS),
                        r.get(PR_SP_EXAM.EXAM) == null ? r.get(PR_HS_EXAM.EXAM) : r.get(PR_SP_EXAM.EXAM)
                ));
    }

    @Override
    public Stream<ExamPrescription> fetchAll() {
        return context
                .select(PRESCRIPTION.asterisk(), PR_SP_EXAM.asterisk(), PR_HS_EXAM.asterisk())
                .from(PRESCRIPTION)
                .leftJoin(PR_SP_EXAM).on(PRESCRIPTION.ID.eq(PR_SP_EXAM.PRESCRIPTION))
                .leftJoin(PR_HS_EXAM).on(PRESCRIPTION.ID.eq(PR_HS_EXAM.PRESCRIPTION))
                .where(PR_SP_EXAM.EXAM.isNotNull().or(PR_HS_EXAM.EXAM.isNotNull()))
                .orderBy(PRESCRIPTION.DATE)
                .fetchStream()
                .map((r) -> new ExamPrescription(
                        r.get(PRESCRIPTION.ID),
                        r.get(PRESCRIPTION.PLACE),
                        r.get(PRESCRIPTION.DATE),
                        r.get(PRESCRIPTION.CONCERNS),
                        r.get(PR_SP_EXAM.EXAM) == null ? r.get(PR_HS_EXAM.EXAM) : r.get(PR_SP_EXAM.EXAM)
                ));
    }
}