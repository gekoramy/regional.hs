package dunder.mifflin.http.views.general;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.pojos.General;
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
import java.util.NoSuchElementException;

import static dunder.mifflin.utils.Locations.location;

@WebServlet("/general/patients")
public class Patients extends HttpServlet {

    @Inject
    DAOs daos;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        try {
            final long id = Auths.session(req).orElseThrow();
            final General general = daos.factory().general().byKey(id).orElseThrow();
            final String avatar = Avatars.avatar50(daos.factory().avatar(), req.getContextPath(), general);

            req.setAttribute("general", general);
            req.setAttribute("avatar", avatar);
            req.getServletContext().getRequestDispatcher("/general/patients.jsp").forward(req, resp);

        } catch (NoSuchElementException e) {
            resp.sendRedirect(location(req, "/login"));
        } catch (DAOException e) {
            req.setAttribute("exception", e);
            resp.sendRedirect(location(req, "/exception"));
        }
    }
}
