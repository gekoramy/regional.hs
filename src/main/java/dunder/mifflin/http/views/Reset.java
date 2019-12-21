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

import static dunder.mifflin.utils.Functional.optionally;
import static javax.servlet.http.HttpServletResponse.SC_INTERNAL_SERVER_ERROR;
import static javax.servlet.http.HttpServletResponse.SC_UNAUTHORIZED;

@WebServlet("/reset")
public class Reset extends HttpServlet {

    @Inject
    private DAOs daos;

    @Inject
    private Emails emails;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            final Long who = Optional.ofNullable(req.getParameter("who")).flatMap(optionally(Long::parseLong)).orElseThrow();
            final UUID token = Optional.ofNullable(req.getParameter("token")).flatMap(optionally(UUID::fromString)).orElseThrow();

            final Recover recover = daos.factory().token().byKey(who)
                    .filter((r) -> r.expiration().isAfter(OffsetDateTime.now()))
                    .filter((r) -> BCrypt.checkpw(token.toString(), r.token()))
                    .orElseThrow();

            final Person person = daos.factory().person().byKey(recover.person()).orElseThrow();

            req.setAttribute("token", token.toString());
            req.setAttribute("person", person);

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
            final Long who = Optional.ofNullable(req.getParameter("who")).flatMap(optionally(Long::parseLong)).orElseThrow();
            final UUID token = Optional.ofNullable(req.getParameter("token")).flatMap(optionally(UUID::fromString)).orElseThrow();
            final String password = Optional.ofNullable(req.getParameter("password")).orElseThrow();

            final Recover recover = daos.factory().token().byKey(who)
                    .filter((r) -> r.expiration().isAfter(OffsetDateTime.now()))
                    .filter((r) -> BCrypt.checkpw(token.toString(), r.token()))
                    .orElseThrow();

            final Person person = daos.factory().person().byKey(recover.person()).orElseThrow();

            daos.factory().secret().store(recover.person(), BCrypt.hashpw(password, BCrypt.gensalt()));
            daos.factory().token().remove(recover.person());

            emails.password(person);

            req.getServletContext().getRequestDispatcher("/logout").forward(req, resp);

        } catch (NoSuchElementException e) {
            resp.sendError(SC_UNAUTHORIZED);
        } catch (DAOException | MessagingException e) {
            resp.sendError(SC_INTERNAL_SERVER_ERROR, e.getMessage());
        }
    }
}
