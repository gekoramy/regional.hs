package dunder.mifflin.http.views.patient;

import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.pojos.Avatar;
import dunder.mifflin.persistance.pojos.ExamPrescription;
import dunder.mifflin.persistance.pojos.Person;
import dunder.mifflin.services.DAOs;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;

import static java.util.stream.Collectors.toUnmodifiableList;

@WebServlet("/patient/exams")
public class ExamPrescriptions extends HttpServlet {

    @Inject
    DAOs daos;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        try {
            final long id = Optional.ofNullable(req.getSession(false)).map((session) -> session.getAttribute("auth")).filter((auth) -> auth instanceof Long).map((auth) -> (Long) auth).orElseThrow();
            final Person person = daos.factory().person().byKey(id).orElseThrow();
            final String avatar = daos.factory().avatar().byKey(person.id()).map(Avatar::url).map((url) -> String.format("%s/assets/img/avatar/%s", req.getContextPath(), url)).orElse(String.format("https://api.adorable.io/avatars/175/%s", person.email()));
            final List<ExamPrescription> medicines = daos.factory().examPrescription().concerns(person.id(), "").collect(toUnmodifiableList());

            req.setAttribute("person", person);
            req.setAttribute("avatar", avatar);
            req.setAttribute("exams", medicines);
            req.getServletContext().getRequestDispatcher("/patient/exams.jsp").forward(req, resp);

        } catch (NoSuchElementException e) {
            resp.sendRedirect(String.format("%s/%s", req.getContextPath(), "login"));
        } catch (DAOException e) {
            req.setAttribute("exception", e);
            resp.sendRedirect(String.format("%s/%s", req.getContextPath(), "exception"));
        }
    }
}
