package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.ReportDAO;
import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.jdbc.generics.JDBC;
import dunder.mifflin.persistance.pojos.Report;
import org.jooq.DSLContext;
import org.jooq.impl.DSL;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistance.jdbc.jooq.Tables.*;

public class ReportJDBC extends JDBC implements ReportDAO {

    public ReportJDBC(DSLContext context) {
        super(context);
    }

    @Override
    public Report insert(long prescription, long responsible, String note) {
        return context.transactionResult((config) -> {
                    if (
                            DSL.using(config).fetchExists(PR_SP_EXAM, PR_SP_EXAM.PRESCRIPTION.eq(prescription))
                                    && DSL.using(config).fetchExists(SPECIALIST, SPECIALIST.ID.eq(responsible))
                    ) {
                        return DSL.using(config).insertInto(SP_REPORT)
                                .columns(SP_REPORT.PRESCRIPTION, SP_REPORT.SPECIALIST, SP_REPORT.NOTE)
                                .values(prescription, responsible, note)
                                .returning(SP_REPORT.asterisk())
                                .fetchOptional()
                                .map((r) -> new Report(
                                        r.get(SP_REPORT.PRESCRIPTION),
                                        r.get(SP_REPORT.SPECIALIST),
                                        r.get(SP_REPORT.DATE),
                                        r.get(SP_REPORT.NOTE)
                                ))
                                .get();
                    }

                    if (
                            DSL.using(config).fetchExists(PR_HS_EXAM, PR_HS_EXAM.PRESCRIPTION.eq(prescription))
                                    && DSL.using(config).fetchExists(HS_DOCTOR, HS_DOCTOR.ID.eq(responsible))
                    ) {
                        return DSL.using(config).insertInto(HS_REPORT)
                                .columns(HS_REPORT.PRESCRIPTION, HS_REPORT.DOCTOR, HS_REPORT.NOTE)
                                .values(prescription, responsible, note)
                                .returning(HS_REPORT.asterisk())
                                .fetchOptional()
                                .map((r) -> new Report(
                                        r.get(HS_REPORT.PRESCRIPTION),
                                        r.get(HS_REPORT.DOCTOR),
                                        r.get(HS_REPORT.DATE),
                                        r.get(HS_REPORT.NOTE)
                                ))
                                .get();
                    }

                    throw new DAOException(String.format(
                            "Invalid combination prescription : %d, responsible : %d",
                            prescription,
                            responsible
                    ));
                }
        );
    }

    @Override
    public Optional<Report> remove(long prescription) {
        final var report = context
                .deleteFrom(SP_REPORT)
                .where(SP_REPORT.PRESCRIPTION.eq(prescription))
                .returning(SP_REPORT.asterisk())
                .fetchOptional()
                .map((r) -> new Report(
                        r.get(SP_REPORT.PRESCRIPTION),
                        r.get(SP_REPORT.SPECIALIST),
                        r.get(SP_REPORT.DATE),
                        r.get(SP_REPORT.NOTE)
                ));

        final var hsReport = context
                .deleteFrom(HS_REPORT)
                .where(HS_REPORT.PRESCRIPTION.eq(prescription))
                .returning(HS_REPORT.asterisk())
                .fetchOptional()
                .map((r) -> new Report(
                        r.get(HS_REPORT.PRESCRIPTION),
                        r.get(HS_REPORT.DOCTOR),
                        r.get(HS_REPORT.DATE),
                        r.get(HS_REPORT.NOTE)
                ));

        return report.or(() -> hsReport);
    }

    @Override
    public long count() {
        return context.fetchCount(SP_REPORT) + context.fetchCount(HS_REPORT);
    }

    @Override
    public Optional<Report> byKey(Long key) {
        final var report = context.select()
                .from(SP_REPORT)
                .where(SP_REPORT.PRESCRIPTION.eq(key))
                .fetchOptionalInto(Report.class);

        final var hsReport = context.select()
                .from(HS_REPORT)
                .where(HS_REPORT.PRESCRIPTION.eq(key))
                .fetchOptionalInto(Report.class);

        return Optional.<Report>empty()
                .or(() -> report)
                .or(() -> hsReport);
    }

    @Override
    public Map<Long, Report> byKeys(Long... keys) throws DAOException {
        final var report = context.select()
                .from(SP_REPORT)
                .where(SP_REPORT.PRESCRIPTION.in(keys))
                .fetchMap(SP_REPORT.PRESCRIPTION, Report.class);

        final var hsReport = context.select()
                .from(HS_REPORT)
                .where(HS_REPORT.PRESCRIPTION.in(keys))
                .fetchMap(HS_REPORT.PRESCRIPTION, Report.class);

        final Map<Long, Report> results = new HashMap<>();
        results.putAll(report);
        results.putAll(hsReport);
        return results;
    }

    @Override
    public Stream<Report> fetchAll() {
        final var rs = context.select()
                .from(SP_REPORT)
                .fetchStreamInto(Report.class);

        final var hrs = context.select()
                .from(HS_REPORT)
                .fetchStreamInto(Report.class);

        return Stream.concat(
                rs,
                hrs
        );
    }
}
