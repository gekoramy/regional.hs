package dunder.mifflin.http.views;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Optional;

@WebServlet("/logout")
public class Logout extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Optional.ofNullable(req.getSession(false)).ifPresent(HttpSession::invalidate);
        resp.sendRedirect(String.format("%s/%s", req.getContextPath(), "login"));
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Optional.ofNullable(req.getSession(false)).ifPresent(HttpSession::invalidate);
        resp.sendRedirect(String.format("%s/%s", req.getContextPath(), "login"));
    }
}
