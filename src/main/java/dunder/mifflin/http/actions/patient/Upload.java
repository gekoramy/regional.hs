package dunder.mifflin.http.actions.patient;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.pojos.Avatar;
import dunder.mifflin.services.DAOs;
import dunder.mifflin.utils.Auths;

import javax.imageio.ImageIO;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.util.NoSuchElementException;
import java.util.Optional;

import static dunder.mifflin.utils.Locations.location;
import static javax.servlet.http.HttpServletResponse.*;

@WebServlet("/patient/upload")
@MultipartConfig
public class Upload extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        req.getSession().setAttribute(
                "/patient/upload",
                action(req)
        );

        resp.sendRedirect(location(req, "/patient/profile"));
    }

    @Inject
    DAOs daos;

    private int action(HttpServletRequest req) {
        try (
                final InputStream input = req.getPart("avatar").getInputStream()
        ) {
            final long id = Auths.session(req).orElseThrow();
            final File uploads = new File(String.format("%s/assets/img/avatar", req.getServletContext().getRealPath("/")));
            final File file = File.createTempFile("avt.", ".jpg", uploads);

            ImageIO.write(
                    square(Optional.ofNullable(ImageIO.read(input)).orElseThrow(IOException::new)),
                    "jpg",
                    file
            );

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
        } catch (DAOException | IOException | ServletException e) {
            return SC_INTERNAL_SERVER_ERROR;
        }
    }

    private static BufferedImage square(BufferedImage origin) {
        final int maximum = 500;
        final int side = Math.min(origin.getHeight(), origin.getWidth());

        final BufferedImage square = origin.getSubimage(0, 0, side, side);

        if (side <= maximum)
            return square;

        final BufferedImage result = new BufferedImage(500, 500, BufferedImage.TYPE_INT_RGB);
        final Graphics graphics = result.getGraphics();
        graphics.drawImage(
                square.getScaledInstance(
                        maximum,
                        maximum,
                        Image.SCALE_SMOOTH
                ),
                0,
                0,
                null
        );
        graphics.dispose();
        return result;
    }
}
