package dunder.mifflin.http.views.general;

import dunder.mifflin.beans.DAOs;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.pojos.General;
import dunder.mifflin.utils.Patients;
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
import static dunder.mifflin.utils.Results.result;
import static javax.servlet.http.HttpServletResponse.SC_INTERNAL_SERVER_ERROR;
import static javax.servlet.http.HttpServletResponse.SC_UNAUTHORIZED;

@WebServlet("/general/medicines")
public class MedicinePrescriptions extends HttpServlet {

    @Inject
    private DAOs daos;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        try {
            final long gid = Auths.session(req).orElseThrow();
            final long pid = Optional.ofNullable(req.getParameter("patient")).flatMap(optionally(Long::parseLong)).orElseThrow();

            final General general = daos.factory().general().follows(pid).filter((g) -> g.id().equals(gid)).orElseThrow();
            final String avatar = Avatars.avatar50(daos.factory().avatar(), req.getContextPath(), general);

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

            req.setAttribute("result", result(req, "/general/prescribe/medicine"));
            req.setAttribute("general", general);
            req.setAttribute("avatar", avatar);
            req.getServletContext().getRequestDispatcher("/general/medicines.jsp").forward(req, resp);

            Fallbacks.safe(req);

        } catch (NoSuchElementException e) {
            resp.sendError(SC_UNAUTHORIZED);
        } catch (DAOException e) {
            resp.sendError(SC_INTERNAL_SERVER_ERROR, e.getMessage());
        }
    }
}
