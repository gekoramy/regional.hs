package dunder.mifflin.http.views.specialist;

import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.pojos.*;
import dunder.mifflin.services.DAOs;
import dunder.mifflin.utils.Auths;
import dunder.mifflin.utils.Avatars;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

import static dunder.mifflin.utils.Locations.location;
import static java.util.stream.Collectors.toUnmodifiableList;
import static java.util.stream.Collectors.toUnmodifiableSet;

@WebServlet("/specialist/exams")
public class ExamPrescriptions extends HttpServlet {

    @Inject
    DAOs daos;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        try {
            final long sid = Auths.session(req).orElseThrow();
            final Specialist specialist = daos.factory().specialist().byKey(sid).orElseThrow();
            final String avatar = Avatars.avatar50(daos.factory().avatar(), req.getContextPath(), specialist);

            final long pid = Optional.ofNullable(req.getParameter("patient")).map(Long::parseLong).orElseThrow();
            final Person patient = daos.factory().person().byKey(pid).orElseThrow();
            final List<ExamPrescription> exams = daos.factory().examPrescription().concerns(patient.id(), "").collect(toUnmodifiableList());
            final Set<Long> qualified = daos.factory().spExam().qualifiedFor(specialist.id()).map(Examination::id).collect(toUnmodifiableSet());

            final Long[] prescriptions = exams.stream().map(Prescription::id).toArray(Long[]::new);
            final Map<Long, Ticket> tickets = daos.factory().ticket().byKeys(prescriptions);
            final Map<Long, Report> reports = daos.factory().report().byKeys(prescriptions);

            req.setAttribute("specialist", specialist);
            req.setAttribute("avatar", avatar);
            req.setAttribute("patient", patient);
            req.setAttribute("exams", exams);
            req.setAttribute("qualified", qualified);
            req.setAttribute("tickets", tickets);
            req.setAttribute("reports", reports);
            req.getServletContext().getRequestDispatcher("/specialist/exams.jsp").forward(req, resp);

        } catch (NoSuchElementException e) {
            resp.sendRedirect(location(req, "/login"));
        } catch (DAOException e) {
            req.setAttribute("exception", e);
            resp.sendRedirect(location(req, "/exception"));
        }
    }
}
