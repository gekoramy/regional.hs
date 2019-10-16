package dunder.mifflin.http.views.patient;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.pojos.Person;
import dunder.mifflin.persistence.pojos.Secret;
import dunder.mifflin.services.DAOs;
import dunder.mifflin.services.Emails;
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

@WebServlet("/patient/password")
public class Password extends HttpServlet {

    @Inject
    DAOs daos;

    @Inject
    Emails emails;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        try {
            final long id = Auths.session(req).orElseThrow();
            final String current = req.getParameter("current");
            final String request = req.getParameter("request");

            final Person person = daos.factory().person().byKey(id).orElseThrow();
            daos.factory().secret().byKey(id).map(Secret::password).filter((hashed) -> BCrypt.checkpw(current, hashed)).orElseThrow();
            daos.factory().secret().store(id, BCrypt.hashpw(request, BCrypt.gensalt())).orElseThrow();

            emails.password(person);

            resp.sendRedirect(location(req, "/patient/profile"));

        } catch (NoSuchElementException e) {
            resp.sendRedirect(location(req, "/logout"));
        } catch (DAOException e) {
            req.setAttribute("exception", e);
            resp.sendRedirect(location(req, "/exception"));
        } catch (MessagingException e) {
            // TODO MessagingException
            e.printStackTrace();
        }
    }
}
