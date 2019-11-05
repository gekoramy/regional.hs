package dunder.mifflin.http.filters;

import dunder.mifflin.beans.DAOs;
import dunder.mifflin.utils.Auths;
import dunder.mifflin.utils.Avatars;

import javax.inject.Inject;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(urlPatterns = {"/info/*", "/policy/*"})
public class AddAvatar extends HttpFilter {

    @Inject
    private DAOs daos;

    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws ServletException, IOException {
        Auths.session(req)
                .flatMap(daos.factory().person()::byKey)
                .map((p) -> Avatars.avatar50(daos.factory().avatar(), req.getContextPath(), p))
                .ifPresent((avatar) -> req.setAttribute("avatar", avatar));

        chain.doFilter(req, res);
    }
}
