package dunder.mifflin.http.views.general;

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
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Optional;

import static dunder.mifflin.utils.Results.result;
import static java.util.stream.Collectors.toUnmodifiableList;
import static javax.servlet.http.HttpServletResponse.SC_INTERNAL_SERVER_ERROR;
import static javax.servlet.http.HttpServletResponse.SC_UNAUTHORIZED;

@WebServlet("/general/medicines")
public class MedicinePrescriptions extends HttpServlet {

    @Inject
    private DAOs daos;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        try {
            final long gid = Auths.session(req).orElseThrow();
            final long pid = Optional.ofNullable(req.getParameter("patient")).map(Long::parseLong).orElseThrow();

            final General general = daos.factory().general().follows(pid).filter((g) -> g.id().equals(gid)).orElseThrow();
            final String avatar = Avatars.avatar50(daos.factory().avatar(), req.getContextPath(), general);

            final Person patient = daos.factory().person().byKey(pid).orElseThrow();
            final String pAvatar = Avatars.avatar200(daos.factory().avatar(), req.getContextPath(), patient);
            final List<MedicinePrescription> medicines = daos.factory().medicinePrescription().concerns(patient.id(), "").collect(toUnmodifiableList());

            final Long[] prescriptions = medicines.stream().map(Prescription::id).toArray(Long[]::new);
            final Map<Long, MedicineTicket> tickets = daos.factory().medicineTicket().byKeys(prescriptions);

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

            req.setAttribute("result", result(req, "/general/prescribe/medicine"));
            req.setAttribute("general", general);
            req.setAttribute("avatar", avatar);
            req.setAttribute("patient", patient);
            req.setAttribute("patient_avatar", pAvatar);
            req.setAttribute("medicines", medicines);
            req.setAttribute("tickets", tickets);
            req.getServletContext().getRequestDispatcher("/general/medicines.jsp").forward(req, resp);

            Fallbacks.safe(req);

        } catch (NoSuchElementException e) {
            resp.sendError(SC_UNAUTHORIZED);
        } catch (DAOException e) {
            resp.sendError(SC_INTERNAL_SERVER_ERROR, e.getMessage());
        }
    }
}
