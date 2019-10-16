package dunder.mifflin.persistence.pojos;

import java.io.Serializable;
import java.util.StringJoiner;

import static java.util.Objects.requireNonNull;

public class Examination implements Serializable {

    private final Long id;
    private final String name;
    private final String info;

    public Examination(Long id, String name, String info) {
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
        return new StringJoiner(", ", Examination.class.getSimpleName() + "[", "]")
                .add("id=" + id)
                .add("name='" + name + "'")
                .add("info='" + info + "'")
                .toString();
    }
}
