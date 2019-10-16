package dunder.mifflin.http.views;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.pojos.Person;
import dunder.mifflin.services.DAOs;
import dunder.mifflin.services.Emails;
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

import static dunder.mifflin.utils.Locations.location;

@WebServlet("/change")
public class Change extends HttpServlet {

    @Inject
    DAOs daos;

    @Inject
    Emails emails;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            final var token = Optional.ofNullable(req.getParameter("token")).map(UUID::fromString).orElseThrow();

            final var recover = daos.factory().recover().by(token).filter((r) -> r.expiration().isAfter(OffsetDateTime.now())).orElseThrow();
            final var person = daos.factory().person().byKey(recover.person()).orElseThrow();

            req.setAttribute("expiration", recover.expiration());
            req.setAttribute("person", person);
            req.setAttribute("token", token.toString());

            req.getServletContext().getRequestDispatcher("/change.jsp").forward(req, resp);

        } catch (NoSuchElementException e) {
            req.setAttribute("wrong", true);
            req.getServletContext().getRequestDispatcher("/logout").forward(req, resp);
        } catch (DAOException e) {
            req.setAttribute("exception", e);
            resp.sendRedirect(location(req, "/exception"));
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            final var token = Optional.ofNullable(req.getParameter("token")).map(UUID::fromString).orElseThrow();
            final var password = Optional.ofNullable(req.getParameter("password")).orElseThrow();

            final var recover = daos.factory().recover().by(token)
                    .filter((r) -> r.expiration().isAfter(OffsetDateTime.now()))
                    .orElseThrow();

            final Person person = daos.factory().person().byKey(recover.person()).orElseThrow();
            daos.factory().secret().store(recover.person(), BCrypt.hashpw(password, BCrypt.gensalt()));

            emails.password(person);

            daos.factory().recover().remove(recover.person());

            req.getServletContext().getRequestDispatcher("/logout").forward(req, resp);

        } catch (NoSuchElementException e) {
            req.getServletContext().getRequestDispatcher("/change.jsp").forward(req, resp);
        } catch (DAOException e) {
            req.setAttribute("exception", e);
            resp.sendRedirect(location(req, "/exception"));
        } catch (MessagingException e) {
            // TODO MessagingException
        }
    }
}
