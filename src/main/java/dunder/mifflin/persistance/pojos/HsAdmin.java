package dunder.mifflin.persistance.pojos;

import java.time.LocalDate;
import java.util.StringJoiner;

import static java.util.Objects.requireNonNull;

public class HsAdmin extends Person {

    private final Long workplace;

    public HsAdmin(Long id, String email, String name, String surname, LocalDate birthday, Long birthplace, String fc, Boolean gender, Long residence, Long workplace) {
        super(id, email, name, surname, birthday, birthplace, fc, gender, residence);
        this.workplace = requireNonNull(workplace);
    }

    public Long workplace() {
        return workplace;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", HsAdmin.class.getSimpleName() + "[", "]")
                .add("workplace=" + workplace)
                .add("id=" + id())
                .add("email='" + email() + "'")
                .add("name='" + name() + "'")
                .add("surname='" + surname() + "'")
                .add("birthday=" + birthday())
                .add("birthplace=" + birthplace())
                .add("fc='" + fc() + "'")
                .add("gender=" + gender())
                .add("residence=" + residence())
                .toString();
    }
}
