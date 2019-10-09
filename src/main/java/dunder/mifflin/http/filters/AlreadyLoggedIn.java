package dunder.mifflin.http.filters;

import dunder.mifflin.services.DAOs;

import javax.inject.Inject;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Optional;

@WebFilter(urlPatterns = "/login")
public class AlreadyLoggedIn extends HttpFilter {

    @Inject
    DAOs daos;

    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {
        final var auth = Optional
                .ofNullable(req.getSession(false))
                .map((session) -> session.getAttribute("auth"))
                .filter((obj) -> obj instanceof Long)
                .map((obj) -> (Long) obj)
                .map((id) -> daos.factory().person().byKey(id))
                .isPresent();

        if (auth)
            res.sendRedirect(String.format("%s/%s", req.getContextPath(), "patient/medicines"));
        else
            chain.doFilter(req, res);
    }
}
