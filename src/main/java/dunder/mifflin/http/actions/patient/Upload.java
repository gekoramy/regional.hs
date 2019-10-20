package dunder.mifflin.http.actions.patient;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.pojos.Avatar;
import dunder.mifflin.services.DAOs;
import dunder.mifflin.utils.Auths;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.NoSuchElementException;

import static dunder.mifflin.utils.Locations.location;
import static javax.servlet.http.HttpServletResponse.*;

@WebServlet("/patient/upload")
@MultipartConfig
public class Upload extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().setAttribute(
                "/patient/upload",
                action(req)
        );

        resp.sendRedirect(location(req, "/patient/profile"));
    }

    @Inject
    DAOs daos;

    private int action(HttpServletRequest req) throws IOException, ServletException {
        try (
                final InputStream input = req.getPart("avatar").getInputStream()
        ) {
            final long id = Auths.session(req).orElseThrow();
            final File uploads = new File(String.format("%s/assets/img/avatar", req.getServletContext().getRealPath("/")));
            final File file = File.createTempFile("avt", ".jpg", uploads);

            Files.copy(input, file.toPath(), StandardCopyOption.REPLACE_EXISTING);

            daos.factory().avatar()
                    .remove(id)
                    .map(Avatar::url)
                    .map((url) -> String.format("%s/assets/img/avatar/%s", req.getServletContext().getRealPath("/"), url))
                    .map(File::new)
                    .map(File::toPath)
                    .ifPresent((path) -> {
                        try {
                            Files.deleteIfExists(path);
                        } catch (IOException e) {
                            req.getServletContext().log("Unable to delete old avatar", e);
                        }
                    });

            daos.factory().avatar().store(id, file.getName());

            return SC_OK;
        } catch (NoSuchElementException e) {
            return SC_UNAUTHORIZED;
        } catch (DAOException e) {
            return SC_INTERNAL_SERVER_ERROR;
        }
    }
}
