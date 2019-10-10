package dunder.mifflin.utils;

import javax.servlet.http.HttpServletRequest;

public class Locations {

    public static String location(HttpServletRequest req, String servlet) {
        return String.join(
                "",
                req.getContextPath(),
                servlet
        );
    }
}
