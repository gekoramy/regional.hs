package dunder.mifflin.http.actions.patient;

import dunder.mifflin.beans.DAOs;
import dunder.mifflin.beans.Emails;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.pojos.Person;
import dunder.mifflin.persistence.pojos.Secret;
import dunder.mifflin.utils.Auths;
import org.mindrot.jbcrypt.BCrypt;

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

@WebServlet("/patient/password")
public class Password extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        req.getSession().setAttribute(
                "/patient/password",
                action(req)
        );

        resp.sendRedirect(location(req, "/patient/profile"));
    }

    @Inject
    private DAOs daos;

    @Inject
    private Emails emails;

    private int action(HttpServletRequest req) {
        try {
            final long id = Auths.session(req).orElseThrow();
            final String current = req.getParameter("current");
            final String request = req.getParameter("request");

            final Person person = daos.factory().person().byKey(id).orElseThrow();
            daos.factory().secret().byKey(id).map(Secret::password).filter((hashed) -> BCrypt.checkpw(current, hashed)).orElseThrow();
            daos.factory().secret().store(id, BCrypt.hashpw(request, BCrypt.gensalt())).orElseThrow();

            emails.password(person);

            return SC_OK;
        } catch (NoSuchElementException e) {
            return SC_UNAUTHORIZED;
        } catch (DAOException e) {
            return SC_INTERNAL_SERVER_ERROR;
        } catch (MessagingException e) {
            return SC_PARTIAL_CONTENT;
        }
    }
}
