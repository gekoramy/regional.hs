package dunder.mifflin.persistance.pojos;

import java.io.Serializable;
import java.util.StringJoiner;

import static java.util.Objects.requireNonNull;

public class City implements Serializable {

    private final Long id;
    private final Long province;
    private final String name;

    public City(Long id, Long province, String name) {
        this.id = requireNonNull(id);
        this.province = requireNonNull(province);
        this.name = requireNonNull(name);
    }

    public Long id() {
        return id;
    }

    public Long province() {
        return province;
    }

    public String name() {
        return name;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", City.class.getSimpleName() + "[", "]")
                .add("id=" + id)
                .add("province=" + province)
                .add("name='" + name + "'")
                .toString();
    }
}
