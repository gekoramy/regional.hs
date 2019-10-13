package dunder.mifflin.http.api.restricted;

import com.github.cliftonlabs.json_simple.JsonArray;
import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.pojos.Person;
import dunder.mifflin.services.DAOs;
import dunder.mifflin.utils.Auths;
import dunder.mifflin.utils.Avatars;
import dunder.mifflin.utils.Jsonify;

import javax.inject.Inject;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Optional;

import static java.util.stream.Collectors.toUnmodifiableList;

@WebServlet("/api/patients")
@Produces(MediaType.APPLICATION_JSON)
public class Patients extends HttpServlet {

    @Inject
    DAOs daos;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        try {
            final long id = Auths.session(req).orElseThrow();
            final String name = Optional.ofNullable(req.getParameter("name")).orElse("");
            final String email = Optional.ofNullable(req.getParameter("email")).orElse("");
            final String fc = Optional.ofNullable(req.getParameter("fc")).orElse("");

            final List<Person> patients = daos.factory().person().patients(id, name, email, fc).collect(toUnmodifiableList());

            final Map<Long, String> avatars = Avatars.avatars50(daos.factory().avatar(), req.getContextPath(), patients);

            final JsonArray array = patients
                    .stream()
                    .map((patient) -> Jsonify.json(patient, avatars))
                    .collect(Jsonify.array());

            array.toJson(resp.getWriter());

        } catch (NoSuchElementException e) {
            // TODO NoSuchElementException
        } catch (DAOException e) {
            // TODO DAOException
        }
    }
}
