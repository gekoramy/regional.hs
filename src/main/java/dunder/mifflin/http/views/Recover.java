package dunder.mifflin.http.views;

import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.services.DAOs;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.NoSuchElementException;

@WebServlet("/recover")
public class Recover extends HttpServlet {

    @Inject
    DAOs daos;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        req.getServletContext().getRequestDispatcher(String.format("/%s", "recover.jsp")).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            final var username = req.getParameter("username");

            final var person = daos.factory().person().by(username).orElseThrow();
            final var recover = daos.factory().recover().store(person.id());

            final var reset = String.format("%s/%s?token=%s", req.getContextPath(), "change", recover.token().toString());

            // TODO send email
            System.err.println(reset);

            resp.sendRedirect(String.format("%s/%s", req.getContextPath(), "patient/medicines"));

        } catch (NoSuchElementException e) {
            req.setAttribute("_404", req.getParameter("username"));
            req.getServletContext().getRequestDispatcher(String.format("/%s", "recover.jsp")).forward(req, resp);
        } catch (DAOException e) {
            req.setAttribute("exception", e);
            resp.sendRedirect(String.format("%s/%s", req.getContextPath(), "exception"));
        }
    }
}
