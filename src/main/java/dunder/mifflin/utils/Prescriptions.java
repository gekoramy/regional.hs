package dunder.mifflin.utils;

import dunder.mifflin.persistence.daos.*;
import dunder.mifflin.persistence.pojos.*;

import javax.servlet.http.HttpServletRequest;
import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.utils.Functional.optionally;
import static java.util.stream.Collectors.toUnmodifiableList;

public class Prescriptions {

    private static final int ROWS = 20;

    public static final OffsetDateTime MAX = OffsetDateTime.of(
            9000, 12, 31, 23, 59, 59, 0, ZoneOffset.UTC
    );

    public static final OffsetDateTime MIN = OffsetDateTime.of(
            -4000, 1, 1, 0, 0, 0, 0, ZoneOffset.UTC
    );

    public static void medicines(HttpServletRequest req, Long who, MedicinePrescriptionDAO prescriptionDAO, MedicineTicketDAO ticketDAO) {
        final Optional<OffsetDateTime> before = Optional.ofNullable(req.getParameter("before")).flatMap(optionally(OffsetDateTime::parse));
        final Optional<OffsetDateTime> after = Optional.ofNullable(req.getParameter("after")).flatMap(optionally(OffsetDateTime::parse));

        final List<MedicinePrescription> medicines = Optional.<Stream<MedicinePrescription>>empty()
                .or(() -> after.map((date) -> prescriptionDAO.concernsAfter(who, date, ROWS)))
                .or(() -> before.map((date) -> prescriptionDAO.concernsBefore(who, date, ROWS)))
                .orElseGet(() -> prescriptionDAO.concernsBefore(who, MAX, ROWS))
                .collect(toUnmodifiableList());

        Optional.<OffsetDateTime>empty()
                .or(() -> Optional.of(medicines).flatMap(optionally((xs) -> xs.get(0))).map(Prescription::date))
                .or(() -> Optional.of(MIN))
                .filter((date) -> prescriptionDAO.concernsAfter(who, date, 1).findAny().isPresent())
                .ifPresent((nextAfter) -> req.setAttribute("after", nextAfter));

        Optional.<OffsetDateTime>empty()
                .or(() -> Optional.of(medicines).flatMap(optionally((xs) -> xs.get(xs.size() - 1))).map(Prescription::date))
                .or(() -> Optional.of(MAX))
                .filter((date) -> prescriptionDAO.concernsBefore(who, date, 1).findAny().isPresent())
                .ifPresent((nextBefore) -> req.setAttribute("before", nextBefore));

        final Long[] prescriptions = medicines.stream().map(Prescription::id).toArray(Long[]::new);
        final Map<Long, MedicineTicket> tickets = ticketDAO.byKeys(prescriptions);

        req.setAttribute("medicines", medicines);
        req.setAttribute("tickets", tickets);
    }

    public static void exams(HttpServletRequest req, Long who, ExamPrescriptionDAO prescriptionDAO, ExamTicketDAO ticketDAO, ReportDAO reportDAO, PersonDAO personDAO, AvatarDAO avatarDAO) {
        final Optional<OffsetDateTime> before = Optional.ofNullable(req.getParameter("before")).flatMap(optionally(OffsetDateTime::parse));
        final Optional<OffsetDateTime> after = Optional.ofNullable(req.getParameter("after")).flatMap(optionally(OffsetDateTime::parse));

        final List<ExamPrescription> exams = Optional.<Stream<ExamPrescription>>empty()
                .or(() -> after.map((date) -> prescriptionDAO.concernsAfter(who, date, ROWS)))
                .or(() -> before.map((date) -> prescriptionDAO.concernsBefore(who, date, ROWS)))
                .orElseGet(() -> prescriptionDAO.concernsBefore(who, MAX, ROWS))
                .collect(toUnmodifiableList());

        Optional.<OffsetDateTime>empty()
                .or(() -> Optional.of(exams).flatMap(optionally((xs) -> xs.get(0))).map(Prescription::date))
                .or(() -> Optional.of(MIN))
                .filter((date) -> prescriptionDAO.concernsAfter(who, date, 1).findAny().isPresent())
                .ifPresent((nextAfter) -> req.setAttribute("after", nextAfter));

        Optional.<OffsetDateTime>empty()
                .or(() -> Optional.of(exams).flatMap(optionally((xs) -> xs.get(xs.size() - 1))).map(Prescription::date))
                .or(() -> Optional.of(MAX))
                .filter((date) -> prescriptionDAO.concernsBefore(who, date, 1).findAny().isPresent())
                .ifPresent((nextBefore) -> req.setAttribute("before", nextBefore));

        final Long[] prescriptions = exams.stream().map(Prescription::id).toArray(Long[]::new);
        final Map<Long, ExamTicket> tickets = ticketDAO.byKeys(prescriptions);
        final Map<Long, Report> reports = reportDAO.byKeys(prescriptions);
        final Map<Long, Person> responsible = personDAO.byKeys(tickets.values().stream().map(ExamTicket::responsible).toArray(Long[]::new));

        final Map<Long, String> avatars = Avatars.avatars50(
                avatarDAO,
                req.getContextPath(),
                List.copyOf(responsible.values())
        );

        req.setAttribute("exams", exams);
        req.setAttribute("tickets", tickets);
        req.setAttribute("reports", reports);
        req.setAttribute("responsible", responsible);
        req.setAttribute("avatars", avatars);
    }
}
