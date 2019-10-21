package dunder.mifflin.http.views;

import dunder.mifflin.beans.DAOs;
import dunder.mifflin.beans.Emails;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.pojos.Person;
import dunder.mifflin.persistence.pojos.Recover;
import org.mindrot.jbcrypt.BCrypt;

import javax.inject.Inject;
import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.OffsetDateTime;
import java.util.NoSuchElementException;
import java.util.Optional;
import java.util.UUID;

import static javax.servlet.http.HttpServletResponse.SC_INTERNAL_SERVER_ERROR;
import static javax.servlet.http.HttpServletResponse.SC_UNAUTHORIZED;

@WebServlet("/reset")
public class Reset extends HttpServlet {

    @Inject
    DAOs daos;

    @Inject
    Emails emails;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            final UUID token = Optional.ofNullable(req.getParameter("token")).map(UUID::fromString).orElseThrow();

            final Recover recover = daos.factory().recover().by(token)
                    .filter((r) -> r.expiration().isAfter(OffsetDateTime.now()))
                    .orElseThrow();

            final Person person = daos.factory().person().byKey(recover.person()).orElseThrow();

            req.setAttribute("expiration", recover.expiration());
            req.setAttribute("person", person);
            req.setAttribute("token", token.toString());

            req.getServletContext().getRequestDispatcher("/reset.jsp").forward(req, resp);

        } catch (NoSuchElementException e) {
            resp.sendError(SC_UNAUTHORIZED);
        } catch (DAOException e) {
            resp.sendError(SC_INTERNAL_SERVER_ERROR, e.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            final UUID token = Optional.ofNullable(req.getParameter("token")).map(UUID::fromString).orElseThrow();
            final String password = Optional.ofNullable(req.getParameter("password")).orElseThrow();

            final Recover recover = daos.factory().recover().by(token)
                    .filter((r) -> r.expiration().isAfter(OffsetDateTime.now()))
                    .orElseThrow();

            final Person person = daos.factory().person().byKey(recover.person()).orElseThrow();

            daos.factory().secret().store(recover.person(), BCrypt.hashpw(password, BCrypt.gensalt()));
            daos.factory().recover().remove(recover.person());

            emails.password(person);

            req.getServletContext().getRequestDispatcher("/logout").forward(req, resp);

        } catch (NoSuchElementException e) {
            req.getServletContext().getRequestDispatcher("/reset.jsp").forward(req, resp);
        } catch (DAOException | MessagingException e) {
            resp.sendError(SC_INTERNAL_SERVER_ERROR, e.getMessage());
        }
    }
}
