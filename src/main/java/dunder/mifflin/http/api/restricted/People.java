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

@WebServlet("/api/people")
@Produces(MediaType.APPLICATION_JSON)
public class People extends HttpServlet {

    @Inject
    DAOs daos;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        try {
            final long id = Auths.session(req).orElseThrow();
            final String name = Optional.ofNullable(req.getParameter("name")).orElse("");
            final String email = Optional.ofNullable(req.getParameter("email")).orElse("");
            final String fc = Optional.ofNullable(req.getParameter("fc")).orElse("");

            // only specialist and health service doctors can perform this request
            Optional.<Long>empty()
                    .or(() -> daos.factory().specialist().byKey(id).map(Person::id))
                    .or(() -> daos.factory().hsDoctor().byKey(id).map(Person::id))
                    .orElseThrow();

            final List<Person> people = daos.factory().person().contains(name, email, fc).collect(toUnmodifiableList());

            final Map<Long, String> avatars = Avatars.avatars50(daos.factory().avatar(), req.getContextPath(), people);

            final JsonArray array = people
                    .stream()
                    .map((person) -> Jsonify.json(person, avatars))
                    .collect(Jsonify.array());

            array.toJson(resp.getWriter());

        } catch (NoSuchElementException e) {
            // TODO NoSuchElementException
        } catch (DAOException e) {
            // TODO DAOException
        }
    }
}
