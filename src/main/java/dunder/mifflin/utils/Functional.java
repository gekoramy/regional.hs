package dunder.mifflin.utils;

import java.util.Optional;
import java.util.function.Function;

public class Functional {

    public static <I, O> Function<I, Optional<O>> optionally(Function<I, O> apply) {
        return (I i) -> {
            try {
                return Optional.of(apply.apply(i));
            } catch (Throwable t) {
                return Optional.empty();
            }
        };
    }

}
