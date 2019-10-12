package dunder.mifflin.http.docs.pdf;

import com.itextpdf.text.DocumentException;
import dunder.mifflin.persistance.pojos.MedicinePrescription;
import dunder.mifflin.persistance.pojos.Prescription;
import dunder.mifflin.persistance.pojos.Province;
import dunder.mifflin.persistance.pojos.Ticket;
import dunder.mifflin.services.DAOs;
import dunder.mifflin.services.PDFs;
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

@WebServlet("/pdf/medicines")
@Produces("application/pdf")
public class MedicineTickets extends HttpServlet {

    @Inject
    DAOs daos;

    @Inject
    PDFs pdfs;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            final Long id = Auths.session(req).orElseThrow();

            final List<Ticket> tickets = daos.factory().ticket().concerns(id).collect(toUnmodifiableList());

            final Map<Long, MedicinePrescription> medicines = daos.factory().medicinePrescription().byKeys(
                    tickets
                            .stream()
                            .map(Ticket::prescription)
                            .toArray(Long[]::new)
            );

            final Map<Long, Province> places = daos.factory().province().byKeys(
                    medicines
                            .values()
                            .stream()
                            .map(Prescription::place)
                            .toArray(Long[]::new)
            );

            final Stream<String> headers = Stream.of(
                    "Prescrizione",
                    "Medicina",
                    "#",
                    "Luogo",
                    "Ticket",
                    "Costo"
            );

            final Stream<String> rows = tickets
                    .stream()
                    .flatMap((t) -> Optional
                            .ofNullable(medicines.get(t.prescription()))
                            .map((prescription) -> Stream.of(
                                    prescription.date().format(DateTimeFormatter.ISO_LOCAL_DATE),
                                    prescription.medicine().name(),
                                    prescription.quantity().toString(),
                                    places.get(prescription.place()).name(),
                                    t.date().format(DateTimeFormatter.ISO_LOCAL_DATE),
                                    String.format("€ %s", t.amount().toPlainString())
                            ))
                            .orElse(Stream.empty())
                    );

            resp.addHeader("Content-Disposition", "attachment; filename=medicines.pdf");

            pdfs.document(
                    resp.getOutputStream(),
                    (doc) -> doc.add(
                            pdfs.table(
                                    new float[]{
                                            3,
                                            11,
                                            1,
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
            req.setAttribute("wrong", true);
            req.getServletContext().getRequestDispatcher("/logout").forward(req, resp);
        } catch (DocumentException e) {
            // TODO DocumentException
        }
    }
}
