package dunder.mifflin.utils;

import dunder.mifflin.persistence.daos.generics.DAO;

import javax.servlet.http.HttpServletRequest;
import java.util.Optional;

public class Auths {

    public static Optional<Long> session(HttpServletRequest req) {
        return Optional.ofNullable(req.getSession(false))
                .map((session) -> session.getAttribute("auth"))
                .filter((auth) -> auth instanceof Long)
                .map((auth) -> (Long) auth);
    }

    public static <T> Optional<T> session(HttpServletRequest req, DAO<T, Long> dao) {
        return Optional.ofNullable(req.getSession(false))
                .map((session) -> session.getAttribute("auth"))
                .filter((auth) -> auth instanceof Long)
                .map((auth) -> (Long) auth)
                .flatMap(dao::byKey);
    }

}
