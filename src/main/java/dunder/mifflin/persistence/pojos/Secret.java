package dunder.mifflin.persistence.pojos;

import java.io.Serializable;
import java.util.StringJoiner;

import static java.util.Objects.requireNonNull;

public class Secret implements Serializable {

    private final Long id;
    private final String password;

    public Secret(Long id, String password) {
        this.id = requireNonNull(id);
        this.password = requireNonNull(password);
    }

    public Long id() {
        return id;
    }

    public String password() {
        return password;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", Secret.class.getSimpleName() + "[", "]")
                .add("id=" + id)
                .add("password='" + password + "'")
                .toString();
    }
}
