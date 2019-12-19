package dunder.mifflin.utils;

import java.time.OffsetDateTime;
import java.time.ZoneOffset;

public class Limits {

    public static final int ROWS = 20;

    public static final OffsetDateTime MAX = OffsetDateTime.of(
            9000, 12, 31, 23, 59, 59, 0, ZoneOffset.UTC
    );

    public static final OffsetDateTime MIN = OffsetDateTime.of(
            -4000, 1, 1, 0, 0, 0, 0, ZoneOffset.UTC
    );

}
