package dunder.mifflin.persistence.pojos;

import java.time.OffsetDateTime;
import java.util.StringJoiner;

import static java.util.Objects.requireNonNull;

public class Recover {

    private final Long person;
    private final String token;
    private final OffsetDateTime expiration;

    public Recover(Long person, String token, OffsetDateTime expiration) {
        this.person = requireNonNull(person);
        this.token = requireNonNull(token);
        this.expiration = requireNonNull(expiration);
    }

    public Long person() {
        return person;
    }

    public String token() {
        return token;
    }

    public OffsetDateTime expiration() {
        return expiration;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", Recover.class.getSimpleName() + "[", "]")
                .add("person=" + person)
                .add("token=" + token)
                .add("expiration=" + expiration)
                .toString();
    }
}
