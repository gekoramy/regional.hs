package dunder.mifflin.http.api.restricted;

import com.github.cliftonlabs.json_simple.JsonArray;
import com.github.cliftonlabs.json_simple.JsonObject;
import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.pojos.Person;
import dunder.mifflin.services.DAOs;
import dunder.mifflin.utils.Auths;
import dunder.mifflin.utils.Avatars;

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

import static java.time.format.DateTimeFormatter.ISO_DATE;
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
                    .map((person) -> new JsonObject(Map.of(
                            "id", person.id(),
                            "avatar", avatars.get(person.id()),
                            "fc", person.fc(),
                            "gender", person.gender(),
                            "email", person.email(),
                            "birthday", person.birthday().format(ISO_DATE),
                            "name", person.name(),
                            "surname", person.surname()
                    )))
                    .collect(
                            JsonArray::new,
                            JsonArray::addChain,
                            JsonArray::addAllChain
                    );

            array.toJson(resp.getWriter());

        } catch (NoSuchElementException e) {
            // TODO NoSuchElementException
        } catch (DAOException e) {
            // TODO DAOException
        }
    }
}
