package dunder.mifflin.http.docs.pdf;

import com.itextpdf.text.DocumentException;
import dunder.mifflin.beans.DAOs;
import dunder.mifflin.beans.PDFs;
import dunder.mifflin.persistence.pojos.ExamPrescription;
import dunder.mifflin.persistence.pojos.Prescription;
import dunder.mifflin.persistence.pojos.Province;
import dunder.mifflin.persistence.pojos.Ticket;
import dunder.mifflin.utils.Auths;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Produces;
import java.io.IOException;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Optional;
import java.util.stream.Stream;

import static java.util.stream.Collectors.toUnmodifiableList;
import static javax.servlet.http.HttpServletResponse.SC_INTERNAL_SERVER_ERROR;
import static javax.servlet.http.HttpServletResponse.SC_UNAUTHORIZED;

@WebServlet("/pdf/exams")
@Produces("application/pdf")
public class ExamTickets extends HttpServlet {

    @Inject
    DAOs daos;

    @Inject
    PDFs pdfs;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            final Long id = Auths.session(req).orElseThrow();

            final List<Ticket> tickets = daos.factory().ticket().concerns(id).collect(toUnmodifiableList());

            final Map<Long, ExamPrescription> exams = daos.factory().examPrescription().byKeys(
                    tickets
                            .stream()
                            .map(Ticket::prescription)
                            .toArray(Long[]::new)
            );

            final Map<Long, Province> places = daos.factory().province().byKeys(
                    exams
                            .values()
                            .stream()
                            .map(Prescription::place)
                            .toArray(Long[]::new)
            );

            final Stream<String> headers = Stream.of(
                    "Prescrizione",
                    "Esame",
                    "Luogo",
                    "Ticket",
                    "Costo"
            );

            final Stream<String> rows = tickets
                    .stream()
                    .flatMap((t) -> Optional
                            .ofNullable(exams.get(t.prescription()))
                            .map((prescription) -> Stream.of(
                                    prescription.date().format(DateTimeFormatter.ISO_LOCAL_DATE),
                                    prescription.exam().name(),
                                    places.get(prescription.place()).name(),
                                    t.date().format(DateTimeFormatter.ISO_LOCAL_DATE),
                                    String.format("€ %s", t.amount().toPlainString())
                            ))
                            .orElse(Stream.empty())
                    );

            resp.addHeader("Content-Disposition", "attachment; filename=exams.pdf");

            pdfs.document(
                    resp.getOutputStream(),
                    (doc) -> doc.add(
                            pdfs.table(
                                    new float[]{
                                            3,
                                            12,
                                            3,
                                            3,
                                            2
                                    },
                                    headers,
                                    rows
                            )
                    )
            );

        } catch (NoSuchElementException e) {
            resp.sendError(SC_UNAUTHORIZED);
        } catch (DocumentException e) {
            resp.sendError(SC_INTERNAL_SERVER_ERROR, e.getMessage());
        }
    }
}
