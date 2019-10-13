package dunder.mifflin.http.views.specialist;

import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.pojos.Specialist;
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

@WebServlet("/specialist/people")
public class People extends HttpServlet {

    @Inject
    DAOs daos;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            final long id = Auths.session(req).orElseThrow();
            final Specialist specialist = daos.factory().specialist().byKey(id).orElseThrow();
            final String avatar = Avatars.avatar50(daos.factory().avatar(), req.getContextPath(), specialist);

            req.setAttribute("specialist", specialist);
            req.setAttribute("avatar", avatar);
            req.getServletContext().getRequestDispatcher("/specialist/people.jsp").forward(req, resp);

        } catch (NoSuchElementException e) {
            resp.sendRedirect(location(req, "/login"));
        } catch (DAOException e) {
            // TODO DAOException
        }
    }

}
