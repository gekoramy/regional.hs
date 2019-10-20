package dunder.mifflin.http.views.admin;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.services.DAOs;
import dunder.mifflin.utils.Auths;
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

@WebServlet("/admin/dashboard")
public class Dashboard extends HttpServlet {

    @Inject
    DAOs daos;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            Auths.session(req).flatMap(daos.factory().hsAdmin()::byKey).orElseThrow();
            req.getServletContext().getRequestDispatcher("/admin/dashboard.jsp").forward(req, resp);

            Fallbacks.safe(req);

        } catch (NoSuchElementException e) {
            resp.sendError(SC_UNAUTHORIZED);
        } catch (DAOException e) {
            resp.sendError(SC_INTERNAL_SERVER_ERROR, e.getMessage());
        }
    }
}
