package dunder.mifflin.persistance.pojos;

import java.time.OffsetDateTime;
import java.util.StringJoiner;

import static java.util.Objects.requireNonNull;

public class MedicinePrescription extends Prescription {

    private final Long medicine;
    private final Integer quantity;

    public MedicinePrescription(Long id, Long place, OffsetDateTime date, Long concerns, Long medicine, Integer quantity) {
        super(id, place, date, concerns);
        this.medicine = requireNonNull(medicine);
        this.quantity = requireNonNull(quantity);
    }

    public Long medicine() {
        return medicine;
    }

    public Integer quantity() {
        return quantity;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", MedicinePrescription.class.getSimpleName() + "[", "]")
                .add("medicine=" + medicine)
                .add("quantity=" + quantity)
                .add("id=" + id())
                .add("place=" + place())
                .add("date=" + date())
                .add("concerns=" + concerns())
                .toString();
    }
}
