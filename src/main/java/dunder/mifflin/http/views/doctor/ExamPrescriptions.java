package dunder.mifflin.http.views.doctor;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.pojos.*;
import dunder.mifflin.services.DAOs;
import dunder.mifflin.utils.Auths;
import dunder.mifflin.utils.Avatars;
import dunder.mifflin.utils.Fallbacks;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

import static dunder.mifflin.utils.Results.result;
import static java.util.stream.Collectors.toUnmodifiableList;
import static java.util.stream.Collectors.toUnmodifiableSet;
import static javax.servlet.http.HttpServletResponse.SC_INTERNAL_SERVER_ERROR;
import static javax.servlet.http.HttpServletResponse.SC_UNAUTHORIZED;

@WebServlet("/doctor/exams")
public class ExamPrescriptions extends HttpServlet {

    @Inject
    DAOs daos;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        try {
            final long did = Auths.session(req).orElseThrow();
            final HsDoctor doctor = daos.factory().hsDoctor().byKey(did).orElseThrow();
            final String avatar = Avatars.avatar50(daos.factory().avatar(), req.getContextPath(), doctor);

            final long pid = Optional.ofNullable(req.getParameter("patient")).map(Long::parseLong).orElseThrow();
            final Person patient = daos.factory().person().byKey(pid).orElseThrow();
            final List<ExamPrescription> exams = daos.factory().examPrescription().concerns(patient.id(), "").collect(toUnmodifiableList());
            final Set<Long> qualified = daos.factory().hsExam().qualifiedFor(doctor.id()).map(Examination::id).collect(toUnmodifiableSet());

            final Long[] prescriptions = exams.stream().map(Prescription::id).toArray(Long[]::new);
            final Map<Long, Ticket> tickets = daos.factory().ticket().byKeys(prescriptions);
            final Map<Long, Report> reports = daos.factory().report().byKeys(prescriptions);

            req.setAttribute("result", result(req, "/doctor/cash", "/doctor/publish"));
            req.setAttribute("doctor", doctor);
            req.setAttribute("avatar", avatar);
            req.setAttribute("patient", patient);
            req.setAttribute("exams", exams);
            req.setAttribute("qualified", qualified);
            req.setAttribute("tickets", tickets);
            req.setAttribute("reports", reports);
            req.getServletContext().getRequestDispatcher("/doctor/exams.jsp").forward(req, resp);

            Fallbacks.safe(req);

        } catch (NoSuchElementException e) {
            resp.sendError(SC_UNAUTHORIZED);
        } catch (DAOException e) {
            resp.sendError(SC_INTERNAL_SERVER_ERROR, e.getMessage());
        }
    }
}
