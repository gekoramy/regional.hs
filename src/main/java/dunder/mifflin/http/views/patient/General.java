package dunder.mifflin.http.views.patient;

import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.services.DAOs;

import javax.inject.Inject;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.NoSuchElementException;
import java.util.Optional;

@WebServlet("/patient/general")
public class General extends HttpServlet {

    @Inject
    DAOs daos;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        try {
            final long id = Optional.ofNullable(req.getSession(false)).map((session) -> session.getAttribute("auth")).filter((auth) -> auth instanceof Long).map((auth) -> (Long) auth).orElseThrow();
            final long purpose = Optional.ofNullable(req.getParameter("purpose")).map(Long::parseLong).orElseThrow();

            daos.factory().general().entrusts(id, purpose);

            // TODO send email

            resp.sendRedirect(String.format("%s/%s", req.getContextPath(), "patient/profile"));

        } catch (NoSuchElementException e) {
            resp.sendRedirect(String.format("%s/%s", req.getContextPath(), "login"));
        } catch (DAOException e) {
            req.setAttribute("exception", e);
            resp.sendRedirect(String.format("%s/%s", req.getContextPath(), "exception"));
        }
    }
}
