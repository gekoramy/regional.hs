package dunder.mifflin.http.api;

import com.github.cliftonlabs.json_simple.JsonArray;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.pojos.Examination;
import dunder.mifflin.services.DAOs;
import dunder.mifflin.utils.Jsonify;

import javax.inject.Inject;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.io.IOException;
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
                    .map(Jsonify::json)
                    .collect(Jsonify.array());

            array.toJson(resp.getWriter());

        } catch (DAOException e) {
            resp.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }
}
