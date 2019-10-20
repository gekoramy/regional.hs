package dunder.mifflin.http.filters;

import javax.servlet.FilterChain;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(urlPatterns = "*.jsp")
public class AvoidExtensions extends HttpFilter {

    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException {
        res.sendRedirect(req.getRequestURI().replaceFirst("(?s)(.*).(jsp)", "$1"));
    }
}
