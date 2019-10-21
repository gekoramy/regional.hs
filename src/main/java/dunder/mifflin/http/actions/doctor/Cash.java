package dunder.mifflin.http.actions.doctor;

import dunder.mifflin.beans.DAOs;
import dunder.mifflin.beans.Emails;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.pojos.ExamPrescription;
import dunder.mifflin.persistence.pojos.Person;
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
import static javax.servlet.http.HttpServletResponse.*;

@WebServlet("/doctor/cash")
public class Cash extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        req.getSession().setAttribute(
                "/doctor/cash",
                action(req)
        );

        resp.sendRedirect(location(req, "/doctor/exams", Map.of("patient", req.getParameter("patient"))));
    }

    @Inject
    DAOs daos;

    @Inject
    Emails emails;

    private final BigDecimal amout = BigDecimal.valueOf(1100, 2);

    protected int action(HttpServletRequest req) {
        try {
            Auths.session(req).flatMap(daos.factory().hsDoctor()::byKey).orElseThrow();

            final Person patient = Optional.ofNullable(req.getParameter("patient")).map(Long::parseLong).flatMap(daos.factory().person()::byKey).orElseThrow();
            final ExamPrescription prescription = Optional.ofNullable(req.getParameter("prescription")).map(Long::parseLong).flatMap(daos.factory().examPrescription()::byKey).orElseThrow();

            daos.factory().ticket().insert(prescription.id(), amout);
            emails.cash(patient, amout);

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
