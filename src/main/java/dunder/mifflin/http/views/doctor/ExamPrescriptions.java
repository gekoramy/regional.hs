package dunder.mifflin.http.views.doctor;

import dunder.mifflin.beans.DAOs;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.pojos.Examination;
import dunder.mifflin.persistence.pojos.Person;
import dunder.mifflin.utils.*;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.NoSuchElementException;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Stream;

import static dunder.mifflin.utils.Functional.optionally;
import static dunder.mifflin.utils.Results.result;
import static java.util.stream.Collectors.toUnmodifiableSet;
import static javax.servlet.http.HttpServletResponse.SC_INTERNAL_SERVER_ERROR;
import static javax.servlet.http.HttpServletResponse.SC_UNAUTHORIZED;

@WebServlet("/doctor/exams")
public class ExamPrescriptions extends HttpServlet {

    @Inject
    private DAOs daos;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        try {
            final long did = Auths.session(req).orElseThrow();
            final long pid = Optional.ofNullable(req.getParameter("patient")).flatMap(optionally(Long::parseLong)).orElseThrow();

            final Person doctor = Optional.<Person>empty()
                    .or(() -> daos.factory().hsDoctor().byKey(did))
                    .or(() -> daos.factory().specialist().byKey(did))
                    .orElseThrow();
            final String avatar = Avatars.avatar50(daos.factory().avatar(), req.getContextPath(), doctor);

            final Set<Long> qualified = Stream
                    .concat(
                            daos.factory().hsExam().qualifiedFor(doctor.id()),
                            daos.factory().spExam().qualifiedFor(doctor.id())
                    )
                    .map(Examination::id).collect(toUnmodifiableSet());

            Patients.patient(
                    req,
                    pid,
                    daos.factory().person(),
                    daos.factory().avatar(),
                    daos.factory().city(),
                    daos.factory().province(),
                    daos.factory().region()
            );

            Prescriptions.exams(
                    req,
                    pid,
                    daos.factory().examPrescription(),
                    daos.factory().examTicket(),
                    daos.factory().report(),
                    daos.factory().person(),
                    daos.factory().avatar()
            );

            req.setAttribute("result", result(req, "/doctor/cash", "/doctor/publish"));
            req.setAttribute("doctor", doctor);
            req.setAttribute("avatar", avatar);
            req.setAttribute("qualified", qualified);
            req.getServletContext().getRequestDispatcher("/doctor/exams.jsp").forward(req, resp);

            Fallbacks.safe(req);

        } catch (NoSuchElementException e) {
            resp.sendError(SC_UNAUTHORIZED);
        } catch (DAOException e) {
            resp.sendError(SC_INTERNAL_SERVER_ERROR, e.getMessage());
        }
    }
}
