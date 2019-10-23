package dunder.mifflin.http.actions;

import dunder.mifflin.beans.DAOs;
import dunder.mifflin.beans.Emails;
import dunder.mifflin.persistence.daos.exceptions.DAOException;

import javax.inject.Inject;
import javax.mail.MessagingException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.NoSuchElementException;

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
    DAOs daos;

    @Inject
    Emails emails;

    private int action(HttpServletRequest req) {
        try {
            final var username = req.getParameter("username");

            final var person = daos.factory().person().by(username).orElseThrow();
            final var recover = daos.factory().token().store(person.id());

            final var reset = String.format("http://localhost:8080%s/%s?token=%s", req.getContextPath(), "reset", recover.token().toString());

            emails.recover(person, reset);

            return SC_OK;
        } catch (NoSuchElementException e) {
            return SC_NOT_FOUND;
        } catch (DAOException | MessagingException e) {
            return SC_INTERNAL_SERVER_ERROR;
        }
    }
}
