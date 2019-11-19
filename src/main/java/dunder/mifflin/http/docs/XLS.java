package dunder.mifflin.http.docs;

import dunder.mifflin.beans.DAOs;
import dunder.mifflin.beans.XLSs;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.pojos.*;
import dunder.mifflin.utils.Auths;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Produces;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import static javax.servlet.http.HttpServletResponse.SC_INTERNAL_SERVER_ERROR;
import static javax.servlet.http.HttpServletResponse.SC_UNAUTHORIZED;

@WebServlet("/tickets/xls")
@Produces("application/xlsx")
public class XLS extends HttpServlet {

    @Inject
    private DAOs daos;

    @Inject
    private XLSs xlss;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            final HsAdmin admin = Auths.session(req).flatMap(daos.factory().hsAdmin()::byKey).orElseThrow();
            final List<MedicinePrescription> medicines = daos.factory().medicinePrescription().tookIn(admin.workplace()).collect(Collectors.toUnmodifiableList());
            final List<ExamPrescription> exams = daos.factory().examPrescription().tookIn(admin.workplace()).collect(Collectors.toUnmodifiableList());

            final Map<Long, MedicineTicket> medicineTickets = daos.factory().medicineTicket().byKeys(
                    medicines.stream().map(Prescription::id).toArray(Long[]::new)
            );

            final Map<Long, ExamTicket> examTickets = daos.factory().examTicket().byKeys(
                    exams.stream().map(Prescription::id).toArray(Long[]::new)
            );

            final Map<Long, General> generals = daos.factory().general().generals(
                    Stream.concat(
                            medicines.stream().map(Prescription::concerns),
                            exams.stream().map(Prescription::concerns))
                            .toArray(Long[]::new)
            );

            final Map<Long, Person> patients = daos.factory().person().patients(
                    Stream.concat(
                            medicines.stream().map(Prescription::concerns),
                            exams.stream().map(Prescription::concerns))
                            .toArray(Long[]::new)
            );

            resp.addHeader("Content-Disposition", "attachment; filename=tickets.xlsx");

            xlss.document(
                    resp.getOutputStream(),
                    (sheets) -> {
                        xlss.medicine(
                                medicines.stream(),
                                medicineTickets,
                                patients,
                                generals
                        ).accept(sheets);

                        xlss.exams(
                                exams.stream(),
                                examTickets,
                                patients,
                                generals
                        ).accept(sheets);
                    }
            );
        } catch (NoSuchElementException e) {
            resp.sendError(SC_UNAUTHORIZED);
        } catch (DAOException e) {
            resp.sendError(SC_INTERNAL_SERVER_ERROR, e.getMessage());
        }
    }
}
