package dunder.mifflin.http.views.doctor;

import dunder.mifflin.beans.DAOs;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.pojos.*;
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

import static dunder.mifflin.utils.Functional.optionally;
import static dunder.mifflin.utils.Limits.*;
import static java.util.stream.Collectors.toUnmodifiableList;
import static javax.servlet.http.HttpServletResponse.SC_INTERNAL_SERVER_ERROR;
import static javax.servlet.http.HttpServletResponse.SC_UNAUTHORIZED;

@WebServlet("/doctor/medicines")
public class MedicinePrescriptions extends HttpServlet {

    @Inject
    private DAOs daos;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        try {
            final long did = Auths.session(req).orElseThrow();
            final Person doctor = Optional.<Person>empty()
                    .or(() -> daos.factory().hsDoctor().byKey(did))
                    .or(() -> daos.factory().specialist().byKey(did))
                    .orElseThrow();
            final String avatar = Avatars.avatar50(daos.factory().avatar(), req.getContextPath(), doctor);

            final Optional<OffsetDateTime> before = Optional.ofNullable(req.getParameter("before")).flatMap(optionally(OffsetDateTime::parse));
            final Optional<OffsetDateTime> after = Optional.ofNullable(req.getParameter("after")).flatMap(optionally(OffsetDateTime::parse));

            final long pid = Optional.ofNullable(req.getParameter("patient")).flatMap(optionally(Long::parseLong)).orElseThrow();
            final Person patient = daos.factory().person().byKey(pid).orElseThrow();
            final String pAvatar = Avatars.avatar200(daos.factory().avatar(), req.getContextPath(), patient);

            final List<MedicinePrescription> medicines = Optional.<Stream<MedicinePrescription>>empty()
                    .or(() -> after.map((date) -> daos.factory().medicinePrescription().concernsAfter(patient.id(), date, ROWS)))
                    .or(() -> before.map((date) -> daos.factory().medicinePrescription().concernsBefore(patient.id(), date, ROWS)))
                    .orElseGet(() -> daos.factory().medicinePrescription().concernsBefore(patient.id(), MAX, ROWS))
                    .collect(toUnmodifiableList());

            final Long[] prescriptions = medicines.stream().map(Prescription::id).toArray(Long[]::new);
            final Map<Long, MedicineTicket> tickets = daos.factory().medicineTicket().byKeys(prescriptions);

            {
                final City city = daos.factory().city().byKey(patient.birthplace()).orElseThrow();
                final Province province = daos.factory().province().byKey(city.province()).orElseThrow();
                final Region region = daos.factory().region().byKey(province.region()).orElseThrow();

                req.setAttribute("birthplace_city", city);
                req.setAttribute("birthplace_province", province);
                req.setAttribute("birthplace_region", region);
            }

            {
                final City city = daos.factory().city().byKey(patient.residence()).orElseThrow();
                final Province province = daos.factory().province().byKey(city.province()).orElseThrow();
                final Region region = daos.factory().region().byKey(province.region()).orElseThrow();

                req.setAttribute("residence_city", city);
                req.setAttribute("residence_province", province);
                req.setAttribute("residence_region", region);
            }

            Optional.<OffsetDateTime>empty()
                    .or(() -> Optional.of(medicines).flatMap(optionally((xs) -> xs.get(0))).map(Prescription::date))
                    .or(() -> Optional.of(MIN))
                    .filter((date) -> daos.factory().medicinePrescription().concernsAfter(patient.id(), date, 1).findAny().isPresent())
                    .ifPresent((nextAfter) -> req.setAttribute("after", nextAfter));

            Optional.<OffsetDateTime>empty()
                    .or(() -> Optional.of(medicines).flatMap(optionally((xs) -> xs.get(xs.size() - 1))).map(Prescription::date))
                    .or(() -> Optional.of(MAX))
                    .filter((date) -> daos.factory().medicinePrescription().concernsBefore(patient.id(), date, 1).findAny().isPresent())
                    .ifPresent((nextBefore) -> req.setAttribute("before", nextBefore));

            req.setAttribute("doctor", doctor);
            req.setAttribute("avatar", avatar);
            req.setAttribute("patient", patient);
            req.setAttribute("patient_avatar", pAvatar);
            req.setAttribute("medicines", medicines);
            req.setAttribute("tickets", tickets);
            req.getServletContext().getRequestDispatcher("/doctor/medicines.jsp").forward(req, resp);

            Fallbacks.safe(req);

        } catch (NoSuchElementException e) {
            resp.sendError(SC_UNAUTHORIZED);
        } catch (DAOException e) {
            resp.sendError(SC_INTERNAL_SERVER_ERROR, e.getMessage());
        }
    }
}
