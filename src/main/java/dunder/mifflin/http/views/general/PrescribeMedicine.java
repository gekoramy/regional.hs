package dunder.mifflin.http.views.general;

import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.pojos.General;
import dunder.mifflin.persistance.pojos.MedicinePrescription;
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

@WebServlet("/general/prescribe/medicine")
public class PrescribeMedicine extends HttpServlet {

    @Inject
    DAOs daos;

    @Inject
    Emails emails;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        try {
            final General general = Auths.session(req).flatMap(daos.factory().general()::byKey).orElseThrow();
            final Person patient = Optional.ofNullable(req.getParameter("patient")).map(Long::parseLong).flatMap(daos.factory().person()::byKey).orElseThrow();
            final long medicine = Optional.ofNullable(req.getParameter("medicine")).map(Long::parseLong).orElseThrow();
            final int quantity = Optional.ofNullable(req.getParameter("quantity")).map(Integer::parseInt).filter((x) -> x < 5).filter((x) -> 0 < x).orElseThrow();

            final MedicinePrescription prescription = daos.factory().medicinePrescription().insert(patient.id(), medicine, quantity);
            emails.prescription(patient, general, prescription);

            resp.sendRedirect(location(req, "/general/medicines", Map.of("patient", patient.id())));

        } catch (NoSuchElementException e) {
            // TODO NoSuchElementException
        } catch (DAOException e) {
            // TODO DAOException
        } catch (MessagingException e) {
            // TODO MessagingException
        }
    }
}
