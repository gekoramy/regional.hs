package dunder.mifflin.http.views;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.pojos.Secret;
import dunder.mifflin.services.DAOs;
import dunder.mifflin.utils.Auths;
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

import static dunder.mifflin.utils.Locations.location;
import static java.util.concurrent.TimeUnit.DAYS;
import static java.util.concurrent.TimeUnit.HOURS;
import static javax.servlet.http.HttpServletResponse.SC_INTERNAL_SERVER_ERROR;

@WebServlet("/login")
public class Login extends HttpServlet {

    @Inject
    DAOs daos;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        if (Auths.session(req).isPresent())
            resp.sendRedirect(location(req, "/patient/medicines"));
        else
            req.getServletContext().getRequestDispatcher(String.format("/%s", "login.jsp")).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        try {
            final var username = req.getParameter("username");
            final var password = req.getParameter("password");
            final var remember = Optional.ofNullable(req.getParameter("remember"));

            final var id = daos.factory().secret().by(username).filter((secret) -> BCrypt.checkpw(password, secret.password())).map(Secret::id).orElseThrow();

            req.getSession().setMaxInactiveInterval((int) (
                    remember.filter("true"::equalsIgnoreCase).isPresent()
                            ? DAYS.toSeconds(7)
                            : HOURS.toSeconds(1)
            ));

            req.getSession().setAttribute("auth", id);
            resp.sendRedirect(location(req, "/patient/medicines"));

        } catch (NoSuchElementException e) {
            req.setAttribute("wrong", new Object());
            req.getServletContext().getRequestDispatcher("/login.jsp").forward(req, resp);
        } catch (DAOException e) {
            resp.sendError(SC_INTERNAL_SERVER_ERROR, e.getMessage());
        }
    }
}
