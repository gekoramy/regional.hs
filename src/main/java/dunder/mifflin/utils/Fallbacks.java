package dunder.mifflin.utils;

import javax.servlet.http.HttpServletRequest;
import java.util.Optional;

public class Fallbacks {

    public static void safe(HttpServletRequest req) {
        req.getSession().setAttribute(
                "fallback",
                Optional.ofNullable(req.getQueryString())
                        .map((q) -> String.join("?", req.getRequestURI(), req.getQueryString()))
                        .orElse(req.getRequestURI())
        );
    }
}
