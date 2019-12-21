package dunder.mifflin.http.actions;

import dunder.mifflin.beans.DAOs;
import dunder.mifflin.beans.Emails;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import org.mindrot.jbcrypt.BCrypt;

import javax.inject.Inject;
import javax.mail.MessagingException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.NoSuchElementException;
import java.util.UUID;

import static dunder.mifflin.utils.Locations.location;
import static javax.servlet.http.HttpServletResponse.*;

@WebServlet("/token")
public class Token extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        req.getSession().setAttribute(
                "/token",
                action(req)
        );

        resp.sendRedirect(location(req, "/forgot"));
    }

    @Inject
    private DAOs daos;

    @Inject
    private Emails emails;

    private int action(HttpServletRequest req) {
        try {
            final var username = req.getParameter("username");

            final var token = UUID.randomUUID();
            final var person = daos.factory().person().by(username).orElseThrow();
            final var reset = String.format("http://localhost:8080%s/%s?who=%s&token=%s", req.getContextPath(), "reset", person.id(), token);

            daos.factory().token().store(person.id(), BCrypt.hashpw(token.toString(), BCrypt.gensalt()));

            emails.recover(person, reset);

            return SC_OK;
        } catch (NoSuchElementException e) {
            return SC_NOT_FOUND;
        } catch (DAOException | MessagingException e) {
            return SC_INTERNAL_SERVER_ERROR;
        }
    }
}
