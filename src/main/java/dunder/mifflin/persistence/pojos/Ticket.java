package dunder.mifflin.persistence.pojos;

import java.io.Serializable;
import java.math.BigDecimal;
import java.time.OffsetDateTime;
import java.util.StringJoiner;

import static java.util.Objects.requireNonNull;

public class Ticket implements Serializable {

    private final Long prescription;
    private final OffsetDateTime date;
    private final BigDecimal amount;

    public Ticket(Long prescription, OffsetDateTime date, BigDecimal amount) {
        this.prescription = requireNonNull(prescription);
        this.date = requireNonNull(date);
        this.amount = requireNonNull(amount);
    }

    public Long prescription() {
        return prescription;
    }

    public OffsetDateTime date() {
        return date;
    }

    public BigDecimal amount() {
        return amount;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", Ticket.class.getSimpleName() + "[", "]")
                .add("prescription=" + prescription)
                .add("date=" + date)
                .add("amount=" + amount)
                .toString();
    }
}
