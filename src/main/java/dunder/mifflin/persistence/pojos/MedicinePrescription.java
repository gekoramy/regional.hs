package dunder.mifflin.persistence.pojos;

import java.time.OffsetDateTime;
import java.util.StringJoiner;

import static java.util.Objects.requireNonNull;

public class MedicinePrescription extends Prescription {

    private final Medicine medicine;
    private final Integer quantity;

    public MedicinePrescription(Long id, Long place, OffsetDateTime date, Long concerns, Long medicine, String name, String info, Integer quantity) {
        super(id, place, date, concerns);
        this.medicine = new Medicine(requireNonNull(medicine), requireNonNull(name), requireNonNull(info));
        this.quantity = requireNonNull(quantity);
    }

    public Medicine medicine() {
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
