package dunder.mifflin.utils;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;
import java.util.stream.Collectors;

public class Locations {

    public static String location(HttpServletRequest req, String servlet) {
        return String.join(
                "",
                req.getContextPath(),
                servlet
        );
    }

    public static String location(HttpServletRequest req, String servlet, Map<String, Object> parameters) {
        return String.join(
                "",
                req.getContextPath(),
                servlet,
                parameters
                        .entrySet()
                        .stream()
                        .map((parameter) -> String.format("%s=%s", parameter.getKey(), parameter.getValue()))
                        .collect(Collectors.joining("&", "?", ""))
        );
    }
}
