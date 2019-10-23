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
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;

import static java.util.stream.Collectors.toUnmodifiableList;
import static javax.servlet.http.HttpServletResponse.SC_INTERNAL_SERVER_ERROR;
import static javax.servlet.http.HttpServletResponse.SC_UNAUTHORIZED;

@WebServlet("/patient/medicines")
public class MedicinePrescriptions extends HttpServlet {

    @Inject
    DAOs daos;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        try {
            final long id = Auths.session(req).orElseThrow();
            final Person person = daos.factory().person().byKey(id).orElseThrow();
            final String avatar = Avatars.avatar50(daos.factory().avatar(), req.getContextPath(), person);
            final List<MedicinePrescription> medicines = daos.factory().medicinePrescription().concerns(person.id(), "").collect(toUnmodifiableList());

            final Long[] prescriptions = medicines.stream().map(Prescription::id).toArray(Long[]::new);
            final Map<Long, MedicineTicket> tickets = daos.factory().medicineTicket().byKeys(prescriptions);

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
