package dunder.mifflin.http.api;

import com.github.cliftonlabs.json_simple.JsonArray;
import dunder.mifflin.beans.DAOs;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.pojos.Examination;
import dunder.mifflin.persistence.pojos.Person;
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
import java.util.*;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@WebServlet("/api/exams")
public class Exams extends HttpServlet {

    @Inject
    private DAOs daos;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        try {
            final String pattern = Optional.ofNullable(req.getParameter("pattern")).orElse("");

            final Stream<Examination> hs = daos.factory().hsExam().contains(pattern).map(Function.identity());
            final Stream<Examination> sp = daos.factory().spExam().contains(pattern).map(Function.identity());
            final List<Examination> exams = Stream.concat(hs, sp).sorted(Comparator.comparing(Examination::name)).collect(Collectors.toUnmodifiableList());
            final Map<Long, List<Person>> qualified = daos.factory().person().qualifiedFor(exams.stream().map(Examination::id).toArray(Long[]::new));
            final Map<Long, String> avatars = Avatars.avatars50(
                    daos.factory().avatar(),
                    req.getContextPath(),
                    qualified.values().stream().flatMap(Collection::stream).collect(Collectors.toUnmodifiableList())
            );

            final JsonArray array = exams.stream()
                    .map((exam) -> Jsonify.json(exam, qualified.get(exam.id()), avatars))
                    .collect(Jsonify.array());

            resp.setCharacterEncoding(CharEncoding.UTF_8);
            resp.setContentType(MediaType.APPLICATION_JSON);
            array.toJson(resp.getWriter());

        } catch (DAOException e) {
            resp.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }
}
