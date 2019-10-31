package dunder.mifflin.http.views.specialist;

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
import java.util.*;

import static java.util.stream.Collectors.toUnmodifiableList;
import static javax.servlet.http.HttpServletResponse.SC_INTERNAL_SERVER_ERROR;
import static javax.servlet.http.HttpServletResponse.SC_UNAUTHORIZED;

@WebServlet("/specialist/medicines")
public class MedicinePrescriptions extends HttpServlet {

    @Inject
    DAOs daos;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        try {
            final long sid = Auths.session(req).orElseThrow();
            final Specialist specialist = daos.factory().specialist().byKey(sid).orElseThrow();

            final long pid = Optional.ofNullable(req.getParameter("patient")).map(Long::parseLong).orElseThrow();
            final Person patient = daos.factory().person().byKey(pid).orElseThrow();
            final List<MedicinePrescription> medicines = daos.factory().medicinePrescription().concerns(patient.id(), "").collect(toUnmodifiableList());

            final Long[] prescriptions = medicines.stream().map(Prescription::id).toArray(Long[]::new);
            final Map<Long, MedicineTicket> tickets = daos.factory().medicineTicket().byKeys(prescriptions);

            final Map<Long, String> avatars = Avatars.avatars50(
                    daos.factory().avatar(),
                    req.getContextPath(),
                    Arrays.asList(specialist, patient)
            );

            req.setAttribute("specialist", specialist);
            req.setAttribute("avatars", avatars);
            req.setAttribute("patient", patient);
            req.setAttribute("medicines", medicines);
            req.setAttribute("tickets", tickets);
            req.getServletContext().getRequestDispatcher("/specialist/medicines.jsp").forward(req, resp);

            Fallbacks.safe(req);

        } catch (NoSuchElementException e) {
            resp.sendError(SC_UNAUTHORIZED);
        } catch (DAOException e) {
            resp.sendError(SC_INTERNAL_SERVER_ERROR, e.getMessage());
        }
    }
}
