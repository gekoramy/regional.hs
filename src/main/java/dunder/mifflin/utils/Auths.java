package dunder.mifflin.utils;

import javax.servlet.http.HttpServletRequest;
import java.util.Optional;

public class Auths {

    public static Optional<Long> session(HttpServletRequest req) {
        return Optional.ofNullable(req.getSession(false))
                .map((session) -> session.getAttribute("auth"))
                .filter((auth) -> auth instanceof Long)
                .map((auth) -> (Long) auth);
    }

}
