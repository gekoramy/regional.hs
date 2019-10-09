package dunder.mifflin.http.views.patient;

import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.pojos.Avatar;
import dunder.mifflin.services.DAOs;

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
import java.util.Optional;

@WebServlet("/patient/upload")
@MultipartConfig
public class Upload extends HttpServlet {

    @Inject
    DAOs daos;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try (
                final InputStream input = req.getPart("avatar").getInputStream()
        ) {
            final long id = Optional.ofNullable(req.getSession(false)).map((session) -> session.getAttribute("auth")).filter((auth) -> auth instanceof Long).map((auth) -> (Long) auth).orElseThrow();
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
                            e.printStackTrace();
                            // TODO handle exception
                        }
                    });

            daos.factory().avatar()
                    .store(id, file.getName());

            resp.sendRedirect(String.format("%s/%s", req.getContextPath(), "patient/profile"));
        } catch (NoSuchElementException | IOException e) {
            resp.sendRedirect(String.format("%s/%s", req.getContextPath(), "login"));
        } catch (DAOException e) {
            req.setAttribute("exception", e);
            resp.sendRedirect(String.format("%s/%s", req.getContextPath(), "exception"));
        }
    }
}
