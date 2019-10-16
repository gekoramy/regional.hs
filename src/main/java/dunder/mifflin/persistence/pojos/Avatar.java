package dunder.mifflin.persistence.pojos;

import java.io.Serializable;
import java.util.StringJoiner;

import static java.util.Objects.requireNonNull;

public class Avatar implements Serializable {

    private final Long id;
    private final String url;

    public Avatar(Long id, String url) {
        this.id = requireNonNull(id);
        this.url = requireNonNull(url);
    }

    public Long id() {
        return id;
    }

    public String url() {
        return url;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", Avatar.class.getSimpleName() + "[", "]")
                .add("id=" + id)
                .add("url='" + url + "'")
                .toString();
    }
}
