package dunder.mifflin.http.views.patient;

import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.pojos.City;
import dunder.mifflin.persistance.pojos.General;
import dunder.mifflin.persistance.pojos.Person;
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

@WebServlet("/patient/profile")
public class Profile extends HttpServlet {

    @Inject
    DAOs daos;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            final long id = Auths.session(req).orElseThrow();
            final Person person = daos.factory().person().byKey(id).orElseThrow();
            final String avatar = Avatars.avatar200(daos.factory().avatar(), req.getContextPath(), person);
            final City residence = daos.factory().city().byKey(person.residence()).orElseThrow();
            final General general = daos.factory().general().follows(person.id()).orElseThrow();

            req.setAttribute("person", person);
            req.setAttribute("avatar", avatar);
            req.setAttribute("residence", residence);
            req.setAttribute("general", general);
            req.getServletContext().getRequestDispatcher("/patient/profile.jsp").forward(req, resp);

        } catch (NoSuchElementException e) {
            resp.sendRedirect(location(req, "/login"));
        } catch (DAOException e) {
            req.setAttribute("exception", e);
            resp.sendRedirect(location(req, "/exception"));
        }
    }
}
