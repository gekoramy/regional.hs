package dunder.mifflin.persistence.pojos;

import java.math.BigDecimal;
import java.time.OffsetDateTime;

public class MedicineTicket extends Ticket {

    public MedicineTicket(Long prescription, OffsetDateTime date, BigDecimal amount) {
        super(prescription, date, amount);
    }
}
