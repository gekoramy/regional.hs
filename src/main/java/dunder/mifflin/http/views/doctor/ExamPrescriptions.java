package dunder.mifflin.http.views.doctor;

import dunder.mifflin.beans.DAOs;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.pojos.*;
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
import java.util.stream.Collectors;
import java.util.stream.Stream;

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

            final long pid = Optional.ofNullable(req.getParameter("patient")).map(Long::parseLong).orElseThrow();
            final Person patient = daos.factory().person().byKey(pid).orElseThrow();
            final List<ExamPrescription> exams = daos.factory().examPrescription().concerns(patient.id(), "").collect(toUnmodifiableList());
            final Set<Long> qualified = daos.factory().hsExam().qualifiedFor(doctor.id()).map(Examination::id).collect(toUnmodifiableSet());

            final Long[] prescriptions = exams.stream().map(Prescription::id).toArray(Long[]::new);
            final Map<Long, ExamTicket> tickets = daos.factory().examTicket().byKeys(prescriptions);
            final Map<Long, Report> reports = daos.factory().report().byKeys(prescriptions);
            final Map<Long, Person> responsible = daos.factory().person().byKeys(tickets.values().stream().map(ExamTicket::responsible).toArray(Long[]::new));

            final Map<Long, String> avatars = Avatars.avatars50(
                    daos.factory().avatar(),
                    req.getContextPath(),
                    Stream.concat(
                            Stream.of(doctor, patient),
                            responsible.values().stream()
                    ).collect(Collectors.toUnmodifiableList())
            );

            {
                final City city = daos.factory().city().byKey(patient.birthplace()).orElseThrow();
                final Province province = daos.factory().province().byKey(city.province()).orElseThrow();
                final Region region = daos.factory().region().byKey(province.region()).orElseThrow();

                req.setAttribute("birthplace_city", city);
                req.setAttribute("birthplace_province", province);
                req.setAttribute("birthplace_region", region);
            }

            {
                final City city = daos.factory().city().byKey(patient.residence()).orElseThrow();
                final Province province = daos.factory().province().byKey(city.province()).orElseThrow();
                final Region region = daos.factory().region().byKey(province.region()).orElseThrow();

                req.setAttribute("residence_city", city);
                req.setAttribute("residence_province", province);
                req.setAttribute("residence_region", region);
            }

            req.setAttribute("result", result(req, "/doctor/cash", "/doctor/publish"));
            req.setAttribute("doctor", doctor);
            req.setAttribute("avatars", avatars);
            req.setAttribute("patient", patient);
            req.setAttribute("exams", exams);
            req.setAttribute("qualified", qualified);
            req.setAttribute("tickets", tickets);
            req.setAttribute("reports", reports);
            req.setAttribute("responsible", responsible);
            req.getServletContext().getRequestDispatcher("/doctor/exams.jsp").forward(req, resp);

            Fallbacks.safe(req);

        } catch (NoSuchElementException e) {
            resp.sendError(SC_UNAUTHORIZED);
        } catch (DAOException e) {
            resp.sendError(SC_INTERNAL_SERVER_ERROR, e.getMessage());
        }
    }
}
