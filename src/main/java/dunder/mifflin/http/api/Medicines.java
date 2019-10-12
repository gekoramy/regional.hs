package dunder.mifflin.http.api;

import com.github.cliftonlabs.json_simple.JsonArray;
import com.github.cliftonlabs.json_simple.JsonObject;
import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.services.DAOs;

import javax.inject.Inject;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.io.IOException;
import java.util.Map;
import java.util.Optional;

@WebServlet("/api/medicines")
@Produces(MediaType.APPLICATION_JSON)
public class Medicines extends HttpServlet {

    @Inject
    DAOs daos;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        try {
            final String pattern = Optional.ofNullable(req.getParameter("pattern")).orElse("");

            final JsonArray array = daos.factory().medicine().contains(pattern)
                    .map((medicine) -> new JsonObject(Map.of(
                            "id", medicine.id(),
                            "name", medicine.name(),
                            "info", medicine.info()
                    )))
                    .collect(
                            JsonArray::new,
                            JsonArray::addChain,
                            JsonArray::addAllChain
                    );

            array.toJson(resp.getWriter());

        } catch (DAOException e) {
            // TODO DAOException
        }
    }
}
