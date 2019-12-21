package dunder.mifflin.http.views.doctor;

import dunder.mifflin.beans.DAOs;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.pojos.Person;
import dunder.mifflin.utils.*;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.NoSuchElementException;
import java.util.Optional;

import static dunder.mifflin.utils.Functional.optionally;
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
            final long pid = Optional.ofNullable(req.getParameter("patient")).flatMap(optionally(Long::parseLong)).orElseThrow();

            final Person doctor = Optional.<Person>empty()
                    .or(() -> daos.factory().hsDoctor().byKey(did))
                    .or(() -> daos.factory().specialist().byKey(did))
                    .orElseThrow();
            final String avatar = Avatars.avatar50(daos.factory().avatar(), req.getContextPath(), doctor);

            Patients.patient(
                    req,
                    pid,
                    daos.factory().person(),
                    daos.factory().avatar(),
                    daos.factory().city(),
                    daos.factory().province(),
                    daos.factory().region()
            );

            Prescriptions.medicines(
                    req,
                    pid,
                    daos.factory().medicinePrescription(),
                    daos.factory().medicineTicket()
            );

            req.setAttribute("doctor", doctor);
            req.setAttribute("avatar", avatar);
            req.getServletContext().getRequestDispatcher("/doctor/medicines.jsp").forward(req, resp);

            Fallbacks.safe(req);

        } catch (NoSuchElementException e) {
            resp.sendError(SC_UNAUTHORIZED);
        } catch (DAOException e) {
            resp.sendError(SC_INTERNAL_SERVER_ERROR, e.getMessage());
        }
    }
}
