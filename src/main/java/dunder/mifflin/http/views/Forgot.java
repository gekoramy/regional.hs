package dunder.mifflin.http.views;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static dunder.mifflin.utils.Results.result;

@WebServlet("/forgot")
public class Forgot extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        req.setAttribute("result", result(req, "/token"));
        req.getServletContext().getRequestDispatcher("/forgot.jsp").forward(req, resp);
    }
}
