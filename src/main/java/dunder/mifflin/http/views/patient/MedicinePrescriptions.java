package dunder.mifflin.http.views.patient;

import dunder.mifflin.beans.DAOs;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.pojos.MedicinePrescription;
import dunder.mifflin.persistence.pojos.MedicineTicket;
import dunder.mifflin.persistence.pojos.Person;
import dunder.mifflin.persistence.pojos.Prescription;
import dunder.mifflin.utils.Auths;
import dunder.mifflin.utils.Avatars;
import dunder.mifflin.utils.Fallbacks;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.OffsetDateTime;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.utils.Functional.maybe;
import static dunder.mifflin.utils.Limits.*;
import static java.util.stream.Collectors.toUnmodifiableList;
import static javax.servlet.http.HttpServletResponse.SC_INTERNAL_SERVER_ERROR;
import static javax.servlet.http.HttpServletResponse.SC_UNAUTHORIZED;

@WebServlet("/patient/medicines")
public class MedicinePrescriptions extends HttpServlet {

    @Inject
    private DAOs daos;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        try {
            final long id = Auths.session(req).orElseThrow();

            final Optional<OffsetDateTime> before = Optional.ofNullable(req.getParameter("before")).flatMap(maybe(OffsetDateTime::parse));
            final Optional<OffsetDateTime> after = Optional.ofNullable(req.getParameter("after")).flatMap(maybe(OffsetDateTime::parse));

            final Person person = daos.factory().person().byKey(id).orElseThrow();
            final String avatar = Avatars.avatar50(daos.factory().avatar(), req.getContextPath(), person);

            final List<MedicinePrescription> medicines = Optional.<Stream<MedicinePrescription>>empty()
                    .or(() -> after.map((date) -> daos.factory().medicinePrescription().concernsAfter(person.id(), date, ROWS)))
                    .or(() -> before.map((date) -> daos.factory().medicinePrescription().concernsBefore(person.id(), date, ROWS)))
                    .orElseGet(() -> daos.factory().medicinePrescription().concernsBefore(person.id(), MAX, ROWS))
                    .collect(toUnmodifiableList());

            final Long[] prescriptions = medicines.stream().map(Prescription::id).toArray(Long[]::new);
            final Map<Long, MedicineTicket> tickets = daos.factory().medicineTicket().byKeys(prescriptions);

            Optional.<OffsetDateTime>empty()
                    .or(() -> Optional.of(medicines).flatMap(maybe((xs) -> xs.get(0))).map(Prescription::date))
                    .or(() -> Optional.of(MIN))
                    .filter((date) -> daos.factory().medicinePrescription().concernsAfter(person.id(), date, 1).findAny().isPresent())
                    .ifPresent((nextAfter) -> req.setAttribute("after", nextAfter));

            Optional.<OffsetDateTime>empty()
                    .or(() -> Optional.of(medicines).flatMap(maybe((xs) -> xs.get(xs.size() - 1))).map(Prescription::date))
                    .or(() -> Optional.of(MAX))
                    .filter((date) -> daos.factory().medicinePrescription().concernsBefore(person.id(), date, 1).findAny().isPresent())
                    .ifPresent((nextBefore) -> req.setAttribute("before", nextBefore));

            req.setAttribute("person", person);
            req.setAttribute("avatar", avatar);
            req.setAttribute("medicines", medicines);
            req.setAttribute("tickets", tickets);
            req.getServletContext().getRequestDispatcher("/patient/medicines.jsp").forward(req, resp);

            Fallbacks.safe(req);

        } catch (NoSuchElementException e) {
            resp.sendError(SC_UNAUTHORIZED);
        } catch (DAOException e) {
            resp.sendError(SC_INTERNAL_SERVER_ERROR, e.getMessage());
        }
    }
}
