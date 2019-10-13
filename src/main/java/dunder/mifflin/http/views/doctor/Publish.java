package dunder.mifflin.http.views.doctor;

import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.pojos.ExamPrescription;
import dunder.mifflin.persistance.pojos.HsDoctor;
import dunder.mifflin.persistance.pojos.Person;
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

@WebServlet("/doctor/publish")
public class Publish extends HttpServlet {

    @Inject
    DAOs daos;

    @Inject
    Emails emails;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        try {
            final HsDoctor doctor = Auths.session(req).flatMap(daos.factory().hsDoctor()::byKey).orElseThrow();
            final Person patient = Optional.ofNullable(req.getParameter("patient")).map(Long::parseLong).flatMap(daos.factory().person()::byKey).orElseThrow();
            final ExamPrescription prescription = Optional.ofNullable(req.getParameter("prescription")).map(Long::parseLong).flatMap(daos.factory().examPrescription()::byKey).orElseThrow();
            final String note = Optional.ofNullable(req.getParameter("note")).orElseThrow();

            daos.factory().report().insert(prescription.id(), doctor.id(), note);
            emails.report(patient, doctor);

            resp.sendRedirect(location(req, "/doctor/exams", Map.of("patient", patient.id())));

        } catch (NoSuchElementException e) {
            resp.sendRedirect(location(req, "/doctor/people"));
        } catch (DAOException e) {
            // TODO DAOException
        } catch (MessagingException e) {
            // TODO MessagingException
        }
    }
}
