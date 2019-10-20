package dunder.mifflin.http.docs;

import com.google.zxing.WriterException;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.pojos.MedicinePrescription;
import dunder.mifflin.persistence.pojos.Person;
import dunder.mifflin.services.DAOs;
import dunder.mifflin.services.QRCodes;

import javax.imageio.ImageIO;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Produces;
import java.io.IOException;
import java.time.format.DateTimeFormatter;
import java.util.NoSuchElementException;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import static java.lang.Math.max;
import static java.lang.Math.min;
import static javax.servlet.http.HttpServletResponse.SC_INTERNAL_SERVER_ERROR;
import static javax.servlet.http.HttpServletResponse.SC_UNAUTHORIZED;

@WebServlet("/qr")
@Produces("image/png")
public class QRCode extends HttpServlet {

    @Inject
    DAOs daos;

    @Inject
    QRCodes qr;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            final long pr = Optional.ofNullable(req.getParameter("prescription")).map(Long::parseLong).orElseThrow();
            final int size = Optional.ofNullable(req.getParameter("size")).map(Integer::parseInt).map((s) -> min(s, 600)).map((s) -> max(s, 50)).orElse(50);

            final MedicinePrescription prescription = daos.factory().medicinePrescription().byKey(pr).orElseThrow();
            final String general = daos.factory().general().general(prescription.concerns()).map(Person::fc).orElseThrow();
            final String patient = daos.factory().person().patient(prescription.concerns()).map(Person::fc).orElseThrow();

            final String content = Stream.of(
                    prescription.id().toString(),
                    prescription.medicine().name(),
                    prescription.medicine().info(),
                    prescription.quantity().toString(),
                    prescription.date().format(DateTimeFormatter.ISO_LOCAL_DATE_TIME),
                    general,
                    patient
            ).collect(Collectors.joining(", ", "[", "]"));

            ImageIO.write(
                    qr.bufferedImage(content, size),
                    "png",
                    resp.getOutputStream()
            );

        } catch (NoSuchElementException e) {
            resp.sendError(SC_UNAUTHORIZED);
        } catch (DAOException | WriterException e) {
            resp.sendError(SC_INTERNAL_SERVER_ERROR, e.getMessage());
        }
    }
}
