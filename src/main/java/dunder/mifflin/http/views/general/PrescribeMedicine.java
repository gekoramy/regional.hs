package dunder.mifflin.http.views.general;

import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.pojos.Person;
import dunder.mifflin.services.DAOs;
import dunder.mifflin.utils.Auths;

import javax.inject.Inject;
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

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        try {
            final long id = Auths.session(req).flatMap(daos.factory().general()::byKey).map(Person::id).orElseThrow();
            final long patient = Optional.ofNullable(req.getParameter("patient")).map(Long::parseLong).orElseThrow();
            final long medicine = Optional.ofNullable(req.getParameter("medicine")).map(Long::parseLong).orElseThrow();
            final int quantity = Optional.ofNullable(req.getParameter("quantity")).map(Integer::parseInt).filter((x) -> x < 5).filter((x) -> 0 < x).orElseThrow();

            daos.factory().medicinePrescription().insert(patient, medicine, quantity);

            resp.sendRedirect(location(req, "/general/medicines", Map.of("patient", patient)));

        } catch (NoSuchElementException e) {
            // TODO NoSuchElementException
        } catch (DAOException e) {
            // TODO DAOException
        }
    }
}
