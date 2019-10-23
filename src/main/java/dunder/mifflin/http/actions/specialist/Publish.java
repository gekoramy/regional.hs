package dunder.mifflin.http.actions.specialist;

import dunder.mifflin.beans.DAOs;
import dunder.mifflin.beans.Emails;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.pojos.ExamTicket;
import dunder.mifflin.persistence.pojos.Person;
import dunder.mifflin.persistence.pojos.Specialist;
import dunder.mifflin.utils.Auths;

import javax.inject.Inject;
import javax.mail.MessagingException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Optional;

import static dunder.mifflin.utils.Locations.location;
import static javax.servlet.http.HttpServletResponse.*;

@WebServlet("/specialist/publish")
public class Publish extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        req.getSession().setAttribute(
                "/specialist/publish",
                action(req)
        );

        resp.sendRedirect(location(req, "/specialist/exams", Map.of("patient", req.getParameter("patient"))));
    }

    @Inject
    DAOs daos;

    @Inject
    Emails emails;

    private int action(HttpServletRequest req) {
        try {
            final Specialist specialist = Auths.session(req).flatMap(daos.factory().specialist()::byKey).orElseThrow();
            final Person patient = Optional.ofNullable(req.getParameter("patient")).map(Long::parseLong).flatMap(daos.factory().person()::byKey).orElseThrow();
            final long prescription = Optional.ofNullable(req.getParameter("prescription")).map(Long::parseLong).orElseThrow();
            final String note = Optional.ofNullable(req.getParameter("note")).orElseThrow();

            daos.factory().examTicket().byKey(prescription).map(ExamTicket::responsible).filter(specialist.id()::equals).orElseThrow();
            daos.factory().report().insert(prescription, note);
            emails.report(patient, specialist);

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
