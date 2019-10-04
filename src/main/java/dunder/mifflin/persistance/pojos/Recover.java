package dunder.mifflin.persistance.pojos;

import java.time.OffsetDateTime;
import java.util.StringJoiner;
import java.util.UUID;

public class Recover {

    private final Long person;
    private final UUID token;
    private final OffsetDateTime expiration;

    public Recover(Long person, UUID token, OffsetDateTime expiration) {
        this.person = person;
        this.token = token;
        this.expiration = expiration;
    }

    public Long person() {
        return person;
    }

    public UUID token() {
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
