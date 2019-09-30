package dunder.mifflin.persistance.pojos;

import java.io.Serializable;

import static java.util.Objects.requireNonNull;

public class Province implements Serializable {

    private final Long id;
    private final Long region;
    private final String name;
    private final String abbreviation;

    public Province(Long id, Long region, String name, String abbreviation) {
        this.id = requireNonNull(id);
        this.region = requireNonNull(region);
        this.name = requireNonNull(name);
        this.abbreviation = requireNonNull(abbreviation);
    }

    public Long id() {
        return id;
    }

    public Long region() {
        return region;
    }

    public String name() {
        return name;
    }

    public String abbreviation() {
        return abbreviation;
    }
}
