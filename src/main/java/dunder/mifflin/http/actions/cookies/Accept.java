package dunder.mifflin.http.actions.cookies;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

@WebServlet("/cookies/accept")
public class Accept extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

        final Cookie cookie = new Cookie("consent", "true");
        cookie.setPath(req.getContextPath());
        cookie.setSecure(false);
        cookie.setComment("cookie consent");
        cookie.setMaxAge(Math.toIntExact(TimeUnit.DAYS.toSeconds(90)));

        resp.addCookie(cookie);
        resp.sendRedirect(req.getHeader("referer"));
    }
}
