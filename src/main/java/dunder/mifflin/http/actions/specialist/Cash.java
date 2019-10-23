package dunder.mifflin.http.actions.specialist;

import dunder.mifflin.beans.DAOs;
import dunder.mifflin.beans.Emails;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
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

@WebServlet("/specialist/cash")
public class Cash extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        req.getSession().setAttribute(
                "/specialist/cash",
                action(req)
        );

        resp.sendRedirect(location(req, "/specialist/exams", Map.of("patient", req.getParameter("patient"))));
    }

    @Inject
    DAOs daos;

    @Inject
    Emails emails;

    private final BigDecimal amout = BigDecimal.valueOf(5000, 2);

    private int action(HttpServletRequest req) {
        try {
            final long responsible = Auths.session(req).orElseThrow();
            final long prescription = Optional.ofNullable(req.getParameter("prescription")).map(Long::parseLong).orElseThrow();
            final Person patient = Optional.ofNullable(req.getParameter("patient")).map(Long::parseLong).flatMap(daos.factory().person()::byKey).orElseThrow();

            daos.factory().examTicket().insert(prescription, amout, responsible);
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
