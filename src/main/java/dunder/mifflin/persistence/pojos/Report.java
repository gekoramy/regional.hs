package dunder.mifflin.persistence.pojos;

import java.io.Serializable;
import java.time.OffsetDateTime;
import java.util.StringJoiner;

import static java.util.Objects.requireNonNull;

public class Report implements Serializable {

    private final Long ticket;
    private final OffsetDateTime date;
    private final String note;

    public Report(Long ticket, OffsetDateTime date, String note) {
        this.ticket = requireNonNull(ticket);
        this.date = requireNonNull(date);
        this.note = requireNonNull(note);
    }

    public Long ticket() {
        return ticket;
    }

    public OffsetDateTime date() {
        return date;
    }

    public String note() {
        return note;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", Report.class.getSimpleName() + "[", "]")
                .add("ticket=" + ticket)
                .add("date=" + date)
                .add("note='" + note + "'")
                .toString();
    }
}
