package dunder.mifflin.persistance.pojos;

import java.time.OffsetDateTime;
import java.util.StringJoiner;

import static java.util.Objects.requireNonNull;

public class ExamPrescription extends Prescription {

    private final Long exam;

    public ExamPrescription(Long id, Long place, OffsetDateTime date, Long concerns, Long exam) {
        super(id, place, date, concerns);
        this.exam = requireNonNull(exam);
    }

    public Long exam() {
        return exam;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", ExamPrescription.class.getSimpleName() + "[", "]")
                .add("exam=" + exam)
                .add("id=" + id())
                .add("place=" + place())
                .add("date=" + date())
                .add("concerns=" + concerns())
                .toString();
    }
}
