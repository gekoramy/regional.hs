package dunder.mifflin.http.actions.general;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.pojos.ExamPrescription;
import dunder.mifflin.persistence.pojos.General;
import dunder.mifflin.persistence.pojos.Person;
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
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Optional;

import static dunder.mifflin.utils.Locations.location;
import static javax.servlet.http.HttpServletResponse.*;

@WebServlet("/general/prescribe/exam")
public class PrescribeExam extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        req.getSession().setAttribute(
                "/general/prescribe/exam",
                action(req)
        );

        resp.sendRedirect(location(req, "/general/exams", Map.of("patient", req.getParameter("patient"))));
    }

    @Inject
    DAOs daos;

    @Inject
    Emails emails;

    protected int action(HttpServletRequest req) {
        try {
            final General general = Auths.session(req).flatMap(daos.factory().general()::byKey).orElseThrow();
            final Person patient = Optional.ofNullable(req.getParameter("patient")).map(Long::parseLong).flatMap(daos.factory().person()::byKey).orElseThrow();
            final long exam = Optional.ofNullable(req.getParameter("exam")).map(Long::parseLong).orElseThrow();

            final ExamPrescription prescription = daos.factory().examPrescription().insert(patient.id(), exam);
            emails.prescription(patient, general, prescription);

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
