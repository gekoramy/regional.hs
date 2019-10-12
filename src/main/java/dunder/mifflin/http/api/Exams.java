package dunder.mifflin.http.api;

import com.github.cliftonlabs.json_simple.JsonArray;
import com.github.cliftonlabs.json_simple.JsonObject;
import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.pojos.Examination;
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
import java.util.function.Function;
import java.util.stream.Stream;

@WebServlet("/api/exams")
@Produces(MediaType.APPLICATION_JSON)
public class Exams extends HttpServlet {

    @Inject
    DAOs daos;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        try {
            final String pattern = Optional.ofNullable(req.getParameter("pattern")).orElse("");

            final Stream<Examination> hs = daos.factory().hsExam().contains(pattern).map(Function.identity());
            final Stream<Examination> sp = daos.factory().spExam().contains(pattern).map(Function.identity());

            final JsonArray array = Stream.concat(hs, sp)
                    .map((exam) -> new JsonObject(Map.of(
                            "id", exam.id(),
                            "name", exam.name(),
                            "info", exam.info()
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
