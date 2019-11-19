package dunder.mifflin.http.api.restricted;

import com.github.cliftonlabs.json_simple.JsonArray;
import dunder.mifflin.beans.DAOs;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.pojos.Person;
import dunder.mifflin.utils.Auths;
import dunder.mifflin.utils.Avatars;
import dunder.mifflin.utils.Jsonify;
import org.apache.commons.codec.CharEncoding;

import javax.inject.Inject;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.core.MediaType;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Optional;

import static java.util.stream.Collectors.toUnmodifiableList;

@WebServlet("/api/patients")
public class Patients extends HttpServlet {

    @Inject
    private DAOs daos;

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

            resp.setCharacterEncoding(CharEncoding.UTF_8);
            resp.setContentType(MediaType.APPLICATION_JSON);
            array.toJson(resp.getWriter());

        } catch (NoSuchElementException e) {
            resp.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
        } catch (DAOException e) {
            resp.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }
}
