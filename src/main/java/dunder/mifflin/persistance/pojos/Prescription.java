package dunder.mifflin.persistance.pojos;

import java.io.Serializable;
import java.time.OffsetDateTime;
import java.util.StringJoiner;

import static java.util.Objects.requireNonNull;

public class Prescription implements Serializable {

    private final Long id;
    private final Long place;
    private final OffsetDateTime date;
    private final Long concerns;

    public Prescription(Long id, Long place, OffsetDateTime date, Long concerns) {
        this.id = requireNonNull(id);
        this.place = requireNonNull(place);
        this.date = requireNonNull(date);
        this.concerns = requireNonNull(concerns);
    }

    public Long id() {
        return id;
    }

    public Long place() {
        return place;
    }

    public OffsetDateTime date() {
        return date;
    }

    public Long concerns() {
        return concerns;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", Prescription.class.getSimpleName() + "[", "]")
                .add("id=" + id)
                .add("place=" + place)
                .add("date=" + date)
                .add("concerns=" + concerns)
                .toString();
    }
}
