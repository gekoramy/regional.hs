package dunder.mifflin.http.views.patient;

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
import java.util.NoSuchElementException;

import static dunder.mifflin.utils.Results.result;
import static javax.servlet.http.HttpServletResponse.SC_INTERNAL_SERVER_ERROR;
import static javax.servlet.http.HttpServletResponse.SC_UNAUTHORIZED;

@WebServlet("/patient/profile")
public class Profile extends HttpServlet {

    @Inject
    DAOs daos;

    private void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            final long id = Auths.session(req).orElseThrow();
            final Person person = daos.factory().person().byKey(id).orElseThrow();
            final String avatar = Avatars.avatar200(daos.factory().avatar(), req.getContextPath(), person);

            final General general = daos.factory().general().follows(person.id()).orElseThrow();
            final String general_avatar = Avatars.avatar200(daos.factory().avatar(), req.getContextPath(), general);

            {
                final City city = daos.factory().city().byKey(person.birthplace()).orElseThrow();
                final Province province = daos.factory().province().byKey(city.province()).orElseThrow();
                final Region region = daos.factory().region().byKey(province.region()).orElseThrow();

                req.setAttribute("birthplace_city", city);
                req.setAttribute("birthplace_province", province);
                req.setAttribute("birthplace_region", region);
            }

            {
                final City city = daos.factory().city().byKey(person.residence()).orElseThrow();
                final Province province = daos.factory().province().byKey(city.province()).orElseThrow();
                final Region region = daos.factory().region().byKey(province.region()).orElseThrow();

                req.setAttribute("residence_city", city);
                req.setAttribute("residence_province", province);
                req.setAttribute("residence_region", region);
            }

            req.setAttribute("result", result(req, "/patient/general", "/patient/password", "/patient/upload"));
            req.setAttribute("person", person);
            req.setAttribute("avatar", avatar);
            req.setAttribute("general", general);
            req.setAttribute("general_avatar", general_avatar);
            req.getServletContext().getRequestDispatcher("/patient/profile.jsp").forward(req, resp);

            Fallbacks.safe(req);

        } catch (NoSuchElementException e) {
            resp.sendError(SC_UNAUTHORIZED);
        } catch (DAOException e) {
            resp.sendError(SC_INTERNAL_SERVER_ERROR, e.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        process(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        process(req, resp);
    }
}
