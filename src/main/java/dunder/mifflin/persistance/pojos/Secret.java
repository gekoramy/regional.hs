package dunder.mifflin.persistance.pojos;

import java.io.Serializable;
import java.util.StringJoiner;

public class Secret implements Serializable {

    private final Long id;
    private final String password;

    public Secret(Long id, String password) {
        this.id = id;
        this.password = password;
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
