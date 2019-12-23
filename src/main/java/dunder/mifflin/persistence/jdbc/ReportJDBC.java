package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.ReportDAO;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.jdbc.generics.JDBC;
import dunder.mifflin.persistence.pojos.Report;
import org.jooq.DSLContext;
import org.jooq.impl.DSL;

import java.util.Map;
import java.util.Optional;
import java.util.function.Supplier;
import java.util.stream.Stream;

import static dunder.mifflin.persistence.jdbc.jooq.Tables.*;
import static org.jooq.impl.DSL.nvl;

public class ReportJDBC extends JDBC implements ReportDAO {

    public ReportJDBC(DSLContext context) {
        super(context);
    }

    @Override
    public Report insert(long ticket, String note) {
        return context.transactionResult((config) -> {

                    if (DSL.using(config).fetchExists(SP_TICKET, SP_TICKET.PRESCRIPTION.eq(ticket))) {
                        return DSL.using(config).insertInto(SP_REPORT)
                                .columns(SP_REPORT.TICKET, SP_REPORT.NOTE)
                                .values(ticket, note)
                                .returning(SP_REPORT.asterisk())
                                .fetchOne()
                                .map((r) -> new Report(
                                        r.get(SP_REPORT.TICKET),
                                        r.get(SP_REPORT.DATE),
                                        r.get(SP_REPORT.NOTE)
                                ));
                    }

                    if (DSL.using(config).fetchExists(HS_TICKET, HS_TICKET.PRESCRIPTION.eq(ticket))) {
                        return DSL.using(config).insertInto(HS_REPORT)
                                .columns(HS_REPORT.TICKET, HS_REPORT.NOTE)
                                .values(ticket, note)
                                .returning(HS_REPORT.asterisk())
                                .fetchOne()
                                .map((r) -> new Report(
                                        r.get(HS_REPORT.TICKET),
                                        r.get(HS_REPORT.DATE),
                                        r.get(HS_REPORT.NOTE)
                                ));
                    }

                    throw new DAOException(String.format(
                            "The exam ticket `%d` doesn't exist",
                            ticket
                    ));
                }
        );
    }

    @Override
    public Optional<Report> remove(long ticket) {
        return context.transactionResult((config) -> {

            final Supplier<Optional<Report>> sp = () -> DSL.using(config)
                    .deleteFrom(SP_REPORT)
                    .where(SP_REPORT.TICKET.eq(ticket))
                    .returning(SP_REPORT.asterisk())
                    .fetchOptional()
                    .map((r) -> new Report(
                            r.get(SP_REPORT.TICKET),
                            r.get(SP_REPORT.DATE),
                            r.get(SP_REPORT.NOTE)
                    ));

            final Supplier<Optional<Report>> hs = () -> DSL.using(config)
                    .deleteFrom(HS_REPORT)
                    .where(HS_REPORT.TICKET.eq(ticket))
                    .returning(HS_REPORT.asterisk())
                    .fetchOptional()
                    .map((r) -> new Report(
                            r.get(HS_REPORT.TICKET),
                            r.get(HS_REPORT.DATE),
                            r.get(HS_REPORT.NOTE)
                    ));

            return Optional.<Report>empty()
                    .or(sp)
                    .or(hs);
        });
    }

    @Override
    public long count() {
        return context.fetchCount(SP_REPORT) + context.fetchCount(HS_REPORT);
    }

    @Override
    public Optional<Report> byKey(Long key) {
        return context
                .select(
                        PRESCRIPTION.ID,
                        nvl(SP_REPORT.DATE, HS_REPORT.DATE),
                        nvl(SP_REPORT.NOTE, HS_REPORT.NOTE)
                )
                .from(PRESCRIPTION)
                .leftJoin(SP_REPORT).on(PRESCRIPTION.ID.eq(SP_REPORT.TICKET))
                .leftJoin(HS_REPORT).on(PRESCRIPTION.ID.eq(HS_REPORT.TICKET))
                .where(nvl(SP_REPORT.TICKET, HS_REPORT.TICKET).eq(key))
                .orderBy(nvl(SP_REPORT.DATE, HS_REPORT.DATE).desc())
                .fetchOptionalInto(Report.class);
    }

    @Override
    public Map<Long, Report> byKeys(Long... keys) throws DAOException {
        return context
                .select(
                        PRESCRIPTION.ID,
                        nvl(SP_REPORT.DATE, HS_REPORT.DATE),
                        nvl(SP_REPORT.NOTE, HS_REPORT.NOTE)
                )
                .from(PRESCRIPTION)
                .leftJoin(SP_REPORT).on(PRESCRIPTION.ID.eq(SP_REPORT.TICKET))
                .leftJoin(HS_REPORT).on(PRESCRIPTION.ID.eq(HS_REPORT.TICKET))
                .where(nvl(SP_REPORT.TICKET, HS_REPORT.TICKET).in(keys))
                .orderBy(nvl(SP_REPORT.DATE, HS_REPORT.DATE).desc())
                .fetchMap(PRESCRIPTION.ID, Report.class);
    }

    @Override
    public Stream<Report> fetchAll() {
        return context
                .select(
                        PRESCRIPTION.ID,
                        nvl(SP_REPORT.DATE, HS_REPORT.DATE),
                        nvl(SP_REPORT.NOTE, HS_REPORT.NOTE)
                )
                .from(PRESCRIPTION)
                .leftJoin(SP_REPORT).on(PRESCRIPTION.ID.eq(SP_REPORT.TICKET))
                .leftJoin(HS_REPORT).on(PRESCRIPTION.ID.eq(HS_REPORT.TICKET))
                .where(nvl(SP_REPORT.TICKET, HS_REPORT.TICKET).isNotNull())
                .orderBy(nvl(SP_REPORT.DATE, HS_REPORT.DATE).desc())
                .fetchInto(Report.class)
                .stream();
    }
}
