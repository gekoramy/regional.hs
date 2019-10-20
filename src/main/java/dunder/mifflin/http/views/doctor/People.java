package dunder.mifflin.http.views.doctor;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.pojos.HsDoctor;
import dunder.mifflin.services.DAOs;
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
import java.util.NoSuchElementException;

import static javax.servlet.http.HttpServletResponse.SC_INTERNAL_SERVER_ERROR;
import static javax.servlet.http.HttpServletResponse.SC_UNAUTHORIZED;

@WebServlet("/doctor/people")
public class People extends HttpServlet {

    @Inject
    DAOs daos;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            final long id = Auths.session(req).orElseThrow();
            final HsDoctor doctor = daos.factory().hsDoctor().byKey(id).orElseThrow();
            final String avatar = Avatars.avatar50(daos.factory().avatar(), req.getContextPath(), doctor);

            req.setAttribute("doctor", doctor);
            req.setAttribute("avatar", avatar);
            req.getServletContext().getRequestDispatcher("/doctor/people.jsp").forward(req, resp);

            Fallbacks.safe(req);

        } catch (NoSuchElementException e) {
            resp.sendError(SC_UNAUTHORIZED);
        } catch (DAOException e) {
            resp.sendError(SC_INTERNAL_SERVER_ERROR, e.getMessage());
        }
    }
}
