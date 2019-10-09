package dunder.mifflin.http.api.restricted;

import com.github.cliftonlabs.json_simple.JsonArray;
import com.github.cliftonlabs.json_simple.JsonObject;
import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.pojos.Avatar;
import dunder.mifflin.persistance.pojos.General;
import dunder.mifflin.persistance.pojos.Person;
import dunder.mifflin.services.DAOs;

import javax.inject.Inject;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.io.IOException;
import java.util.*;

import static java.time.format.DateTimeFormatter.ISO_DATE;
import static java.util.stream.Collectors.toUnmodifiableList;

@WebServlet("/api/suitable")
@Produces(MediaType.APPLICATION_JSON)
public class Suitable extends HttpServlet {

    @Inject
    DAOs daos;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        try {
            final long id = Optional.ofNullable(req.getSession(false)).map((session) -> session.getAttribute("auth")).filter((auth) -> auth instanceof Long).map((auth) -> (Long) auth).orElseThrow();
            final String name = Optional.ofNullable(req.getParameter("name")).orElse("");
            final String email = Optional.ofNullable(req.getParameter("email")).orElse("");
            final String fc = Optional.ofNullable(req.getParameter("fc")).orElse("");

            final List<General> suitable = daos.factory().general().suitable(id, name, email, fc).collect(toUnmodifiableList());

            final Map<Long, Avatar> stored = daos.factory().avatar().byKeys(
                    suitable.stream().map(Person::id).toArray(Long[]::new)
            );

            final Map<Long, String> avatars = new HashMap<>();
            suitable.forEach(
                    (person) -> avatars.put(
                            person.id(),
                            Optional.ofNullable(stored.get(person.id()))
                                    .map(Avatar::url)
                                    .map((url) -> String.format("%s/assets/img/avatar/%s", req.getContextPath(), url))
                                    .orElse(String.format("https://api.adorable.io/avatars/45/%s", person.email()))
                    ));

            final JsonArray array = suitable
                    .stream()
                    .map((general) -> new JsonObject(Map.of(
                            "id", general.id(),
                            "avatar", avatars.get(general.id()),
                            "fc", general.fc(),
                            "gender", general.gender(),
                            "email", general.email(),
                            "birthday", general.birthday().format(ISO_DATE),
                            "name", general.name(),
                            "surname", general.surname()
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
