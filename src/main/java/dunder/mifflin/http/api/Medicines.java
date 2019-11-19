package dunder.mifflin.http.api;

import com.github.cliftonlabs.json_simple.JsonArray;
import dunder.mifflin.beans.DAOs;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.utils.Jsonify;
import org.apache.commons.codec.CharEncoding;

import javax.inject.Inject;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.core.MediaType;
import java.io.IOException;
import java.util.Optional;

import static javax.servlet.http.HttpServletResponse.SC_INTERNAL_SERVER_ERROR;

@WebServlet("/api/medicines")
public class Medicines extends HttpServlet {

    @Inject
    private DAOs daos;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        try {
            final String pattern = Optional.ofNullable(req.getParameter("pattern")).orElse("");

            final JsonArray array = daos.factory().medicine().contains(pattern)
                    .map(Jsonify::json)
                    .collect(Jsonify.array());

            resp.setCharacterEncoding(CharEncoding.UTF_8);
            resp.setContentType(MediaType.APPLICATION_JSON);
            array.toJson(resp.getWriter());

        } catch (DAOException e) {
            resp.setStatus(SC_INTERNAL_SERVER_ERROR);
        }
    }
}
