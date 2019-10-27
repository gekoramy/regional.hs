package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.ExamTicketDAO;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.jdbc.generics.JDBC;
import dunder.mifflin.persistence.pojos.ExamTicket;
import org.jooq.DSLContext;
import org.jooq.impl.DSL;

import java.math.BigDecimal;
import java.util.Map;
import java.util.Optional;
import java.util.function.Supplier;
import java.util.stream.Stream;

import static dunder.mifflin.persistence.jdbc.jooq.Tables.*;
import static org.jooq.impl.DSL.nvl;

public class ExamTicketJDBC extends JDBC implements ExamTicketDAO {

    public ExamTicketJDBC(DSLContext context) {
        super(context);
    }

    @Override
    public ExamTicket insert(long prescription, BigDecimal amount, long responsible) {
        return context.transactionResult((config) -> {

            DSL.using(config)
                    .select()
                    .from(PRESCRIPTION)
                    .innerJoin(FOLLOWS).on(PRESCRIPTION.CONCERNS.eq(FOLLOWS.ID))
                    .where(PRESCRIPTION.ID.eq(prescription))
                    .and(FOLLOWS.PATIENT.ne(responsible))
                    .fetchOptional()
                    .orElseThrow(() -> new DAOException("any of those:\n" +
                            "- the prescription does not exist\n" +
                            "- the patient cannot be responsible for himself"
                    ));

            if (
                    DSL.using(config)
                            .select()
                            .from(SP_PRESCRIPTION)
                            .innerJoin(SP_QUALIFICATION).on(SP_PRESCRIPTION.EXAM.eq(SP_QUALIFICATION.EXAM))
                            .where(SP_PRESCRIPTION.PRESCRIPTION.eq(prescription))
                            .and(SP_QUALIFICATION.SPECIALIST.eq(responsible))
                            .fetchOptional()
                            .isPresent()
            ) {
                return DSL.using(config)
                        .insertInto(SP_TICKET)
                        .columns(SP_TICKET.PRESCRIPTION, SP_TICKET.RESPONSIBLE, SP_TICKET.AMOUNT)
                        .values(prescription, responsible, amount)
                        .returning(SP_TICKET.asterisk())
                        .fetchOne()
                        .map((r) -> new ExamTicket(
                                r.get(SP_TICKET.PRESCRIPTION),
                                r.get(SP_TICKET.DATE),
                                r.get(SP_TICKET.AMOUNT),
                                r.get(SP_TICKET.RESPONSIBLE)
                        ));
            }

            if (
                    DSL.using(config)
                            .select()
                            .from(HS_PRESCRIPTION)
                            .innerJoin(HS_QUALIFICATION).on(HS_PRESCRIPTION.EXAM.eq(HS_QUALIFICATION.EXAM))
                            .where(HS_PRESCRIPTION.PRESCRIPTION.eq(prescription))
                            .and(HS_QUALIFICATION.DOCTOR.eq(responsible))
                            .fetchOptional()
                            .isPresent()
            ) {
                return DSL.using(config)
                        .insertInto(HS_TICKET)
                        .columns(HS_TICKET.PRESCRIPTION, HS_TICKET.RESPONSIBLE, HS_TICKET.AMOUNT)
                        .values(prescription, responsible, amount)
                        .returning(HS_TICKET.asterisk())
                        .fetchOne()
                        .map((r) -> new ExamTicket(
                                r.get(HS_TICKET.PRESCRIPTION),
                                r.get(HS_TICKET.DATE),
                                r.get(HS_TICKET.AMOUNT),
                                r.get(HS_TICKET.RESPONSIBLE)
                        ));
            }

            throw new DAOException("any of those:\n" +
                    "- the prescription is not an exam prescription\n" +
                    "- the responsible is not qualified for the exam");
        });
    }

    @Override
    public Optional<ExamTicket> remove(long prescription) {
        return context.transactionResult((config) -> {
            final Supplier<Optional<ExamTicket>> sp = () -> DSL.using(config)
                    .deleteFrom(SP_TICKET)
                    .where(SP_TICKET.PRESCRIPTION.eq(prescription))
                    .returning(SP_TICKET.asterisk())
                    .fetchOptional()
                    .map((r) -> new ExamTicket(
                            r.get(SP_TICKET.PRESCRIPTION),
                            r.get(SP_TICKET.DATE),
                            r.get(SP_TICKET.AMOUNT),
                            r.get(SP_TICKET.RESPONSIBLE)
                    ));

            final Supplier<Optional<ExamTicket>> hs = () -> DSL.using(config)
                    .deleteFrom(HS_TICKET)
                    .where(HS_TICKET.PRESCRIPTION.eq(prescription))
                    .returning(HS_TICKET.asterisk())
                    .fetchOptional()
                    .map((r) -> new ExamTicket(
                            r.get(HS_TICKET.PRESCRIPTION),
                            r.get(HS_TICKET.DATE),
                            r.get(HS_TICKET.AMOUNT),
                            r.get(HS_TICKET.RESPONSIBLE)
                    ));

            return Optional.<ExamTicket>empty()
                    .or(sp)
                    .or(hs);
        });
    }

    @Override
    public Stream<ExamTicket> concerns(long patient) {
        return context
                .select(
                        PRESCRIPTION.ID,
                        nvl(SP_TICKET.DATE, HS_TICKET.DATE),
                        nvl(SP_TICKET.AMOUNT, HS_TICKET.AMOUNT),
                        nvl(SP_TICKET.RESPONSIBLE, HS_TICKET.RESPONSIBLE)
                )
                .from(PRESCRIPTION)
                .innerJoin(FOLLOWS).on(PRESCRIPTION.CONCERNS.eq(FOLLOWS.ID))
                .leftJoin(SP_TICKET).on(PRESCRIPTION.ID.eq(SP_TICKET.PRESCRIPTION))
                .leftJoin(HS_TICKET).on(PRESCRIPTION.ID.eq(HS_TICKET.PRESCRIPTION))
                .where(nvl(SP_TICKET.PRESCRIPTION, HS_TICKET.PRESCRIPTION).isNotNull())
                .and(FOLLOWS.PATIENT.eq(patient))
                .orderBy(nvl(SP_TICKET.DATE, HS_TICKET.DATE).desc())
                .fetchStreamInto(ExamTicket.class);
    }

    @Override
    public long count() {
        return context.fetchCount(SP_TICKET) + context.fetchCount(HS_TICKET);
    }

    @Override
    public Optional<ExamTicket> byKey(Long key) {
        return context
                .select(
                        PRESCRIPTION.ID,
                        nvl(SP_TICKET.DATE, HS_TICKET.DATE),
                        nvl(SP_TICKET.AMOUNT, HS_TICKET.AMOUNT),
                        nvl(SP_TICKET.RESPONSIBLE, HS_TICKET.RESPONSIBLE)
                )
                .from(PRESCRIPTION)
                .innerJoin(FOLLOWS).on(PRESCRIPTION.CONCERNS.eq(FOLLOWS.ID))
                .leftJoin(SP_TICKET).on(PRESCRIPTION.ID.eq(SP_TICKET.PRESCRIPTION))
                .leftJoin(HS_TICKET).on(PRESCRIPTION.ID.eq(HS_TICKET.PRESCRIPTION))
                .where(nvl(SP_TICKET.PRESCRIPTION, HS_TICKET.PRESCRIPTION).eq(key))
                .orderBy(nvl(SP_TICKET.DATE, HS_TICKET.DATE).desc())
                .fetchOptionalInto(ExamTicket.class);
    }

    @Override
    public Map<Long, ExamTicket> byKeys(Long... keys) throws DAOException {
        return context
                .select(
                        PRESCRIPTION.ID,
                        nvl(SP_TICKET.DATE, HS_TICKET.DATE),
                        nvl(SP_TICKET.AMOUNT, HS_TICKET.AMOUNT),
                        nvl(SP_TICKET.RESPONSIBLE, HS_TICKET.RESPONSIBLE)
                )
                .from(PRESCRIPTION)
                .leftJoin(SP_TICKET).on(PRESCRIPTION.ID.eq(SP_TICKET.PRESCRIPTION))
                .leftJoin(HS_TICKET).on(PRESCRIPTION.ID.eq(HS_TICKET.PRESCRIPTION))
                .where(nvl(SP_TICKET.PRESCRIPTION, HS_TICKET.PRESCRIPTION).in(keys))
                .orderBy(nvl(SP_TICKET.DATE, HS_TICKET.DATE).desc())
                .fetchMap(PRESCRIPTION.ID, ExamTicket.class);
    }

    @Override
    public Stream<ExamTicket> fetchAll() {
        return context
                .select(
                        PRESCRIPTION.ID,
                        nvl(SP_TICKET.DATE, HS_TICKET.DATE),
                        nvl(SP_TICKET.AMOUNT, HS_TICKET.AMOUNT),
                        nvl(SP_TICKET.RESPONSIBLE, HS_TICKET.RESPONSIBLE)
                )
                .from(PRESCRIPTION)
                .leftJoin(SP_TICKET).on(PRESCRIPTION.ID.eq(SP_TICKET.PRESCRIPTION))
                .leftJoin(HS_TICKET).on(PRESCRIPTION.ID.eq(HS_TICKET.PRESCRIPTION))
                .where(nvl(SP_TICKET.PRESCRIPTION, HS_TICKET.PRESCRIPTION).isNotNull())
                .orderBy(nvl(SP_TICKET.DATE, HS_TICKET.DATE).desc())
                .fetchStreamInto(ExamTicket.class);
    }
}
