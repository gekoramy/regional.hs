package dunder.mifflin.http.views;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.services.DAOs;
import dunder.mifflin.services.Emails;

import javax.inject.Inject;
import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.NoSuchElementException;

import static dunder.mifflin.utils.Locations.location;

@WebServlet("/recover")
public class Recover extends HttpServlet {

    @Inject
    DAOs daos;

    @Inject
    Emails emails;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        req.getServletContext().getRequestDispatcher("/recover.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            final var username = req.getParameter("username");

            final var person = daos.factory().person().by(username).orElseThrow();
            final var recover = daos.factory().recover().store(person.id());

            final var reset = String.format("http://localhost:8080%s/%s?token=%s", req.getContextPath(), "change", recover.token().toString());

            emails.recover(person, reset);

            resp.sendRedirect(location(req, "/patient/medicines"));

        } catch (NoSuchElementException e) {
            req.setAttribute("_404", req.getParameter("username"));
            req.getServletContext().getRequestDispatcher("/recover.jsp").forward(req, resp);
        } catch (DAOException e) {
            req.setAttribute("exception", e);
            resp.sendRedirect(location(req, "/exception"));
        } catch (MessagingException e) {
            // TODO MessagingException
        }
    }
}
