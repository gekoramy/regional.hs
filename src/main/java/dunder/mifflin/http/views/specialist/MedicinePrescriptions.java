package dunder.mifflin.http.views.specialist;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.pojos.*;
import dunder.mifflin.services.DAOs;
import dunder.mifflin.utils.Auths;
import dunder.mifflin.utils.Avatars;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Optional;

import static dunder.mifflin.utils.Locations.location;
import static java.util.stream.Collectors.toUnmodifiableList;

@WebServlet("/specialist/medicines")
public class MedicinePrescriptions extends HttpServlet {

    @Inject
    DAOs daos;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        try {
            final long sid = Auths.session(req).orElseThrow();
            final Specialist specialist = daos.factory().specialist().byKey(sid).orElseThrow();
            final String avatar = Avatars.avatar50(daos.factory().avatar(), req.getContextPath(), specialist);

            final long pid = Optional.ofNullable(req.getParameter("patient")).map(Long::parseLong).orElseThrow();
            final Person patient = daos.factory().person().byKey(pid).orElseThrow();
            final List<MedicinePrescription> medicines = daos.factory().medicinePrescription().concerns(patient.id(), "").collect(toUnmodifiableList());

            final Long[] prescriptions = medicines.stream().map(Prescription::id).toArray(Long[]::new);
            final Map<Long, Ticket> tickets = daos.factory().ticket().byKeys(prescriptions);

            req.setAttribute("specialist", specialist);
            req.setAttribute("avatar", avatar);
            req.setAttribute("patient", patient);
            req.setAttribute("medicines", medicines);
            req.setAttribute("tickets", tickets);
            req.getServletContext().getRequestDispatcher("/specialist/medicines.jsp").forward(req, resp);

        } catch (NoSuchElementException e) {
            resp.sendRedirect(location(req, "/login"));
        } catch (DAOException e) {
            // TODO DAOException
        }
    }
}
