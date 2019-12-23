package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.ExamPrescriptionDAO;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.jdbc.generics.JDBC;
import dunder.mifflin.persistence.jdbc.utils.Queries;
import dunder.mifflin.persistence.pojos.ExamPrescription;
import org.jooq.DSLContext;
import org.jooq.impl.DSL;

import java.time.OffsetDateTime;
import java.util.ArrayDeque;
import java.util.Map;
import java.util.Optional;
import java.util.Spliterators;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;

import static dunder.mifflin.persistence.jdbc.jooq.Tables.*;
import static org.jooq.impl.DSL.nvl;

public class ExamPrescriptionJDBC extends JDBC implements ExamPrescriptionDAO {

    public ExamPrescriptionJDBC(DSLContext context) {
        super(context);
    }

    @Override
    public ExamPrescription insert(long patient, long exam) {
        return context.transactionResult((config) -> {

            final var insert = DSL.using(config)
                    .select()
                    .from(EXAMINATION)
                    .where(EXAMINATION.ID.eq(exam))
                    .fetchOptional()
                    .orElseThrow(() -> new DAOException(String.format("There is no examination with id : %d", exam)));

            if (DSL.using(config).fetchExists(SP_EXAM, SP_EXAM.ID.eq(exam))) {

                final var prescription = Queries.prescription(patient).apply(DSL.using(config));

                return DSL.using(config)
                        .insertInto(SP_PRESCRIPTION)
                        .columns(SP_PRESCRIPTION.PRESCRIPTION, SP_PRESCRIPTION.EXAM)
                        .values(prescription.id(), exam)
                        .returning(SP_PRESCRIPTION.asterisk())
                        .fetchOne()
                        .map((r) -> new ExamPrescription(
                                prescription.id(),
                                prescription.place(),
                                prescription.date(),
                                prescription.concerns(),
                                insert.get(EXAMINATION.ID),
                                insert.get(EXAMINATION.NAME),
                                insert.get(EXAMINATION.INFO)
                        ));
            }

            if (DSL.using(config).fetchExists(HS_EXAM, HS_EXAM.ID.eq(exam))) {

                final var prescription = Queries.prescription(patient).apply(DSL.using(config));

                return DSL.using(config)
                        .insertInto(HS_PRESCRIPTION)
                        .columns(HS_PRESCRIPTION.PRESCRIPTION, HS_PRESCRIPTION.EXAM)
                        .values(prescription.id(), exam)
                        .returning(HS_PRESCRIPTION.asterisk())
                        .fetchOne()
                        .map((r) -> new ExamPrescription(
                                prescription.id(),
                                prescription.place(),
                                prescription.date(),
                                prescription.concerns(),
                                insert.get(EXAMINATION.ID),
                                insert.get(EXAMINATION.NAME),
                                insert.get(EXAMINATION.INFO)
                        ));
            }

            throw new DAOException("The examination %d is neither a specialist exam nor a health service exam");
        });
    }

    @Override
    public Optional<ExamPrescription> remove(long prescription) {
        return context.transactionResult((config) -> {

            final Supplier<Optional<Long>> sp = () -> DSL.using(config)
                    .deleteFrom(SP_PRESCRIPTION)
                    .where(SP_PRESCRIPTION.PRESCRIPTION.eq(prescription))
                    .returning(SP_PRESCRIPTION.EXAM)
                    .fetchOptional()
                    .map((r) -> r.get(SP_PRESCRIPTION.EXAM));

            final Supplier<Optional<Long>> hs = () -> DSL.using(config)
                    .deleteFrom(HS_PRESCRIPTION)
                    .where(HS_PRESCRIPTION.PRESCRIPTION.eq(prescription))
                    .returning(HS_PRESCRIPTION.EXAM)
                    .fetchOptional()
                    .map((r) -> r.get(HS_PRESCRIPTION.EXAM));

            return Optional.<Long>empty()
                    .or(sp)
                    .or(hs)
                    .flatMap((exam) -> DSL.using(config)
                            .select()
                            .from(EXAMINATION)
                            .where(EXAMINATION.ID.eq(exam))
                            .fetchOptional())
                    .flatMap((exam) -> DSL.using(config)
                            .deleteFrom(PRESCRIPTION)
                            .where(PRESCRIPTION.ID.eq(prescription))
                            .returning(PRESCRIPTION.asterisk())
                            .fetchOptional()
                            .map((r) -> new ExamPrescription(
                                    r.get(PRESCRIPTION.ID),
                                    r.get(PRESCRIPTION.PLACE),
                                    r.get(PRESCRIPTION.DATE),
                                    r.get(PRESCRIPTION.CONCERNS),
                                    exam.get(EXAMINATION.ID),
                                    exam.get(EXAMINATION.NAME),
                                    exam.get(EXAMINATION.INFO)
                            ))
                    );

        });
    }

    @Override
    public Stream<ExamPrescription> concerns(long patient) {
        return context
                .select(PRESCRIPTION.asterisk(), EXAMINATION.asterisk())
                .from(PRESCRIPTION)
                .leftJoin(SP_PRESCRIPTION).on(PRESCRIPTION.ID.eq(SP_PRESCRIPTION.PRESCRIPTION))
                .leftJoin(HS_PRESCRIPTION).on(PRESCRIPTION.ID.eq(HS_PRESCRIPTION.PRESCRIPTION))
                .innerJoin(EXAMINATION).on(EXAMINATION.ID.eq(SP_PRESCRIPTION.EXAM).or(EXAMINATION.ID.eq(HS_PRESCRIPTION.EXAM)))
                .innerJoin(FOLLOWS).on(PRESCRIPTION.CONCERNS.eq(FOLLOWS.ID))
                .where(nvl(SP_PRESCRIPTION.PRESCRIPTION, HS_PRESCRIPTION.PRESCRIPTION).isNotNull())
                .and(FOLLOWS.PATIENT.eq(patient))
                .orderBy(PRESCRIPTION.DATE.desc())
                .fetchInto(ExamPrescription.class)
                .stream();
    }

    @Override
    public Stream<ExamPrescription> concernsAfter(long patient, OffsetDateTime after, int limit) {
        final ArrayDeque<ExamPrescription> tmp = context
                .select(PRESCRIPTION.asterisk(), EXAMINATION.asterisk())
                .from(PRESCRIPTION)
                .leftJoin(SP_PRESCRIPTION).on(PRESCRIPTION.ID.eq(SP_PRESCRIPTION.PRESCRIPTION))
                .leftJoin(HS_PRESCRIPTION).on(PRESCRIPTION.ID.eq(HS_PRESCRIPTION.PRESCRIPTION))
                .innerJoin(EXAMINATION).on(EXAMINATION.ID.eq(SP_PRESCRIPTION.EXAM).or(EXAMINATION.ID.eq(HS_PRESCRIPTION.EXAM)))
                .innerJoin(FOLLOWS).on(PRESCRIPTION.CONCERNS.eq(FOLLOWS.ID))
                .where(nvl(SP_PRESCRIPTION.PRESCRIPTION, HS_PRESCRIPTION.PRESCRIPTION).isNotNull())
                .and(FOLLOWS.PATIENT.eq(patient))
                .orderBy(PRESCRIPTION.DATE.asc())
                .seek(after)
                .limit(limit)
                .fetchInto(ExamPrescription.class)
                .stream()
                .collect(Collectors.toCollection(ArrayDeque::new));

        return StreamSupport.stream(Spliterators.spliteratorUnknownSize(tmp.descendingIterator(), 0), false);
    }

    @Override
    public Stream<ExamPrescription> concernsBefore(long patient, OffsetDateTime before, int limit) {
        return context
                .select(PRESCRIPTION.asterisk(), EXAMINATION.asterisk())
                .from(PRESCRIPTION)
                .leftJoin(SP_PRESCRIPTION).on(PRESCRIPTION.ID.eq(SP_PRESCRIPTION.PRESCRIPTION))
                .leftJoin(HS_PRESCRIPTION).on(PRESCRIPTION.ID.eq(HS_PRESCRIPTION.PRESCRIPTION))
                .innerJoin(EXAMINATION).on(EXAMINATION.ID.eq(SP_PRESCRIPTION.EXAM).or(EXAMINATION.ID.eq(HS_PRESCRIPTION.EXAM)))
                .innerJoin(FOLLOWS).on(PRESCRIPTION.CONCERNS.eq(FOLLOWS.ID))
                .where(nvl(SP_PRESCRIPTION.PRESCRIPTION, HS_PRESCRIPTION.PRESCRIPTION).isNotNull())
                .and(FOLLOWS.PATIENT.eq(patient))
                .orderBy(PRESCRIPTION.DATE.desc())
                .seek(before)
                .limit(limit)
                .fetchInto(ExamPrescription.class)
                .stream();
    }

    @Override
    public Stream<ExamPrescription> prescribedBy(long general) {
        return context
                .select(PRESCRIPTION.asterisk(), EXAMINATION.asterisk())
                .from(PRESCRIPTION)
                .leftJoin(SP_PRESCRIPTION).on(PRESCRIPTION.ID.eq(SP_PRESCRIPTION.PRESCRIPTION))
                .leftJoin(HS_PRESCRIPTION).on(PRESCRIPTION.ID.eq(HS_PRESCRIPTION.PRESCRIPTION))
                .innerJoin(EXAMINATION).on(EXAMINATION.ID.eq(SP_PRESCRIPTION.EXAM).or(EXAMINATION.ID.eq(HS_PRESCRIPTION.EXAM)))
                .innerJoin(FOLLOWS).on(PRESCRIPTION.CONCERNS.eq(FOLLOWS.ID))
                .where(nvl(SP_PRESCRIPTION.PRESCRIPTION, HS_PRESCRIPTION.PRESCRIPTION).isNotNull())
                .and(FOLLOWS.GENERAL.eq(general))
                .orderBy(PRESCRIPTION.DATE.desc())
                .fetchInto(ExamPrescription.class)
                .stream();
    }

    @Override
    public Stream<ExamPrescription> tookIn(long province) {
        return context
                .select(PRESCRIPTION.asterisk(), EXAMINATION.asterisk())
                .from(PRESCRIPTION)
                .leftJoin(SP_PRESCRIPTION).on(PRESCRIPTION.ID.eq(SP_PRESCRIPTION.PRESCRIPTION))
                .leftJoin(HS_PRESCRIPTION).on(PRESCRIPTION.ID.eq(HS_PRESCRIPTION.PRESCRIPTION))
                .innerJoin(EXAMINATION).on(EXAMINATION.ID.eq(SP_PRESCRIPTION.EXAM).or(EXAMINATION.ID.eq(HS_PRESCRIPTION.EXAM)))
                .where(nvl(SP_PRESCRIPTION.PRESCRIPTION, HS_PRESCRIPTION.PRESCRIPTION).isNotNull())
                .and(PRESCRIPTION.PLACE.eq(province))
                .orderBy(PRESCRIPTION.DATE.desc())
                .fetchInto(ExamPrescription.class)
                .stream();
    }

    @Override
    public long count() {
        return context.fetchCount(SP_PRESCRIPTION) + context.fetchCount(HS_PRESCRIPTION);
    }

    @Override
    public Optional<ExamPrescription> byKey(Long key) {
        return context
                .select(PRESCRIPTION.asterisk(), EXAMINATION.asterisk())
                .from(PRESCRIPTION)
                .leftJoin(SP_PRESCRIPTION).on(PRESCRIPTION.ID.eq(SP_PRESCRIPTION.PRESCRIPTION))
                .leftJoin(HS_PRESCRIPTION).on(PRESCRIPTION.ID.eq(HS_PRESCRIPTION.PRESCRIPTION))
                .innerJoin(EXAMINATION).on(EXAMINATION.ID.eq(SP_PRESCRIPTION.EXAM).or(EXAMINATION.ID.eq(HS_PRESCRIPTION.EXAM)))
                .where(nvl(SP_PRESCRIPTION.PRESCRIPTION, HS_PRESCRIPTION.PRESCRIPTION).eq(key))
                .fetchOptionalInto(ExamPrescription.class);

    }

    @Override
    public Map<Long, ExamPrescription> byKeys(Long... keys) throws DAOException {
        return context
                .select(PRESCRIPTION.asterisk(), EXAMINATION.asterisk())
                .from(PRESCRIPTION)
                .leftJoin(SP_PRESCRIPTION).on(PRESCRIPTION.ID.eq(SP_PRESCRIPTION.PRESCRIPTION))
                .leftJoin(HS_PRESCRIPTION).on(PRESCRIPTION.ID.eq(HS_PRESCRIPTION.PRESCRIPTION))
                .innerJoin(EXAMINATION).on(EXAMINATION.ID.eq(SP_PRESCRIPTION.EXAM).or(EXAMINATION.ID.eq(HS_PRESCRIPTION.EXAM)))
                .where(nvl(SP_PRESCRIPTION.PRESCRIPTION, HS_PRESCRIPTION.PRESCRIPTION).in(keys))
                .fetchMap(PRESCRIPTION.ID, ExamPrescription.class);
    }

    @Override
    public Stream<ExamPrescription> fetchAll() {
        return context
                .select(PRESCRIPTION.asterisk(), EXAMINATION.asterisk())
                .from(PRESCRIPTION)
                .leftJoin(SP_PRESCRIPTION).on(PRESCRIPTION.ID.eq(SP_PRESCRIPTION.PRESCRIPTION))
                .leftJoin(HS_PRESCRIPTION).on(PRESCRIPTION.ID.eq(HS_PRESCRIPTION.PRESCRIPTION))
                .innerJoin(EXAMINATION).on(EXAMINATION.ID.eq(SP_PRESCRIPTION.EXAM).or(EXAMINATION.ID.eq(HS_PRESCRIPTION.EXAM)))
                .where(nvl(SP_PRESCRIPTION.PRESCRIPTION, HS_PRESCRIPTION.PRESCRIPTION).isNotNull())
                .orderBy(PRESCRIPTION.DATE.desc())
                .fetchInto(ExamPrescription.class)
                .stream();
    }
}