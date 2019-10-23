package dunder.mifflin.persistence.pojos;

import java.math.BigDecimal;
import java.time.OffsetDateTime;
import java.util.StringJoiner;

import static java.util.Objects.requireNonNull;

public class ExamTicket extends Ticket {

    private final Long responsible;

    public ExamTicket(Long prescription, OffsetDateTime date, BigDecimal amount, Long responsible) {
        super(prescription, date, amount);
        this.responsible = requireNonNull(responsible);
    }

    public Long responsible() {
        return responsible;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", ExamTicket.class.getSimpleName() + "[", "]")
                .add("responsible=" + responsible)
                .add("prescription=" + prescription())
                .add("date=" + date())
                .add("amount=" + amount())
                .toString();
    }
}
