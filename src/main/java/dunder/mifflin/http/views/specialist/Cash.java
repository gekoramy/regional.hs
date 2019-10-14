package dunder.mifflin.http.views.specialist;

import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.pojos.ExamPrescription;
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
import java.math.BigDecimal;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Optional;

import static dunder.mifflin.utils.Locations.location;

@WebServlet("/specialist/cash")
public class Cash extends HttpServlet {

    @Inject
    DAOs daos;

    @Inject
    Emails emails;

    private final BigDecimal amout = BigDecimal.valueOf(5000, 2);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        try {
            Auths.session(req).flatMap(daos.factory().specialist()::byKey).orElseThrow();

            final Person patient = Optional.ofNullable(req.getParameter("patient")).map(Long::parseLong).flatMap(daos.factory().person()::byKey).orElseThrow();
            final ExamPrescription prescription = Optional.ofNullable(req.getParameter("prescription")).map(Long::parseLong).flatMap(daos.factory().examPrescription()::byKey).orElseThrow();

            daos.factory().ticket().insert(prescription.id(), amout);
            emails.cash(patient, amout);

            resp.sendRedirect(location(req, "/specialist/exams", Map.of("patient", patient.id())));

        } catch (NoSuchElementException e) {
            resp.sendRedirect(location(req, "/specialist/people"));
        } catch (DAOException e) {
            // TODO DAOException
        } catch (MessagingException e) {
            // TODO MessagingException
        }
    }
}
