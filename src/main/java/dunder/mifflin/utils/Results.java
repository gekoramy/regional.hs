package dunder.mifflin.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.Optional;

public class Results {

    public static Result result(HttpServletRequest req, String... actions) {
        final HttpSession session = req.getSession(false);
        return null == session
                ? null
                : Arrays.stream(actions)
                .flatMap((action) -> Optional.ofNullable(session.getAttribute(action))
                        .filter((obj) -> obj instanceof Integer)
                        .map((obj) -> (Integer) obj)
                        .map((code) -> new Result(action, code))
                        .stream()
                )
                .peek((result) -> session.removeAttribute(result.action()))
                .findAny()
                .orElse(null);
    }
}
