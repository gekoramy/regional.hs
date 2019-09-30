package dunder.mifflin.persistance.pojos;

import java.io.Serializable;
import java.util.StringJoiner;

import static java.util.Objects.requireNonNull;

public class Medicine implements Serializable {

    private final Long id;
    private final String name;
    private final String info;

    public Medicine(Long id, String name, String info) {
        this.id = requireNonNull(id);
        this.name = requireNonNull(name);
        this.info = requireNonNull(info);
    }

    public Long id() {
        return id;
    }

    public String name() {
        return name;
    }

    public String info() {
        return info;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", Medicine.class.getSimpleName() + "[", "]")
                .add("id=" + id)
                .add("name='" + name + "'")
                .add("info='" + info + "'")
                .toString();
    }
}
