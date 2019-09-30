package dunder.mifflin.persistance.pojos;

import java.io.Serializable;
import java.time.OffsetDateTime;
import java.util.StringJoiner;

import static java.util.Objects.requireNonNull;

public class Report implements Serializable {

    private final Long prescription;
    private final Long responsible;
    private final OffsetDateTime date;
    private final String note;

    public Report(Long prescription, Long responsible, OffsetDateTime date, String note) {
        this.prescription = requireNonNull(prescription);
        this.responsible = requireNonNull(responsible);
        this.date = requireNonNull(date);
        this.note = requireNonNull(note);
    }

    public Long prescription() {
        return prescription;
    }

    public Long responsible() {
        return responsible;
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
                .add("prescription=" + prescription)
                .add("responsible=" + responsible)
                .add("date=" + date)
                .add("note='" + note + "'")
                .toString();
    }
}
