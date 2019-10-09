package dunder.mifflin.http.views.patient;

import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.pojos.Secret;
import dunder.mifflin.services.DAOs;
import org.mindrot.jbcrypt.BCrypt;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.NoSuchElementException;
import java.util.Optional;

@WebServlet("/patient/password")
public class Password extends HttpServlet {

    @Inject
    DAOs daos;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            final long id = Optional.ofNullable(req.getSession(false)).map((session) -> session.getAttribute("auth")).filter((auth) -> auth instanceof Long).map((auth) -> (Long) auth).orElseThrow();
            final String current = req.getParameter("current");
            final String request = req.getParameter("request");

            daos.factory().secret().byKey(id).map(Secret::password).filter((hashed) -> BCrypt.checkpw(current, hashed)).orElseThrow();
            daos.factory().secret().store(id, BCrypt.hashpw(request, BCrypt.gensalt())).orElseThrow();

            // TODO send email

            req.getServletContext().getRequestDispatcher("/patient/profile").forward(req, resp);

        } catch (NoSuchElementException e) {
            resp.sendRedirect(String.format("%s/%s", req.getContextPath(), "logout"));
        } catch (DAOException e) {
            req.setAttribute("exception", e);
            resp.sendRedirect(String.format("%s/%s", req.getContextPath(), "exception"));
        }
    }
}
