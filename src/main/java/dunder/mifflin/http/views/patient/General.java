package dunder.mifflin.http.views.patient;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.services.DAOs;
import dunder.mifflin.services.Emails;
import dunder.mifflin.utils.Auths;

import javax.inject.Inject;
import javax.mail.MessagingException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.NoSuchElementException;
import java.util.Optional;

import static dunder.mifflin.utils.Locations.location;

@WebServlet("/patient/general")
public class General extends HttpServlet {

    @Inject
    DAOs daos;

    @Inject
    Emails emails;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        try {
            final long id = Auths.session(req).orElseThrow();
            final long purpose = Optional.ofNullable(req.getParameter("purpose")).map(Long::parseLong).orElseThrow();

            final var person = daos.factory().person().byKey(id).orElseThrow();
            final var general = daos.factory().general().entrusts(id, purpose);

            emails.general(person, general);

            resp.sendRedirect(location(req, "/patient/profile"));

        } catch (NoSuchElementException e) {
            resp.sendRedirect(location(req, "/login"));
        } catch (DAOException e) {
            req.setAttribute("exception", e);
            resp.sendRedirect(location(req, "/exception"));
        } catch (MessagingException e) {
            // TODO MessagingException
        }
    }
}
