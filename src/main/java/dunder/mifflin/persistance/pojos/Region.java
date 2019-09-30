package dunder.mifflin.persistance.pojos;

import java.io.Serializable;
import java.util.StringJoiner;

import static java.util.Objects.requireNonNull;

public class Region implements Serializable {

    private final Long id;
    private final String name;

    public Region(Long id, String name) {
        this.id = requireNonNull(id);
        this.name = requireNonNull(name);
    }

    public Long id() {
        return id;
    }

    public String name() {
        return name;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", Region.class.getSimpleName() + "[", "]")
                .add("id=" + id)
                .add("name='" + name + "'")
                .toString();
    }
}
