package dunder.mifflin.persistence.pojos;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.StringJoiner;

import static java.util.Objects.requireNonNull;

public class Person implements Serializable {

    private final Long id;
    private final String email;
    private final String name;
    private final String surname;
    private final LocalDate birthday;
    private final Long birthplace;
    private final String fc;
    private final Boolean gender;
    private final Long residence;

    public Person(Long id, String email, String name, String surname, LocalDate birthday, Long birthplace, String fc, Boolean gender, Long residence) {
        this.id = requireNonNull(id);
        this.email = requireNonNull(email);
        this.name = requireNonNull(name);
        this.surname = requireNonNull(surname);
        this.birthday = requireNonNull(birthday);
        this.birthplace = requireNonNull(birthplace);
        this.fc = requireNonNull(fc);
        this.gender = requireNonNull(gender);
        this.residence = requireNonNull(residence);
    }

    public Long id() {
        return id;
    }

    public String email() {
        return email;
    }

    public String name() {
        return name;
    }

    public String surname() {
        return surname;
    }

    public LocalDate birthday() {
        return birthday;
    }

    public Long birthplace() {
        return birthplace;
    }

    public String fc() {
        return fc;
    }

    public Boolean gender() {
        return gender;
    }

    public Long residence() {
        return residence;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", Person.class.getSimpleName() + "[", "]")
                .add("id=" + id)
                .add("email='" + email + "'")
                .add("name='" + name + "'")
                .add("surname='" + surname + "'")
                .add("birthday=" + birthday)
                .add("birthplace=" + birthplace)
                .add("fc='" + fc + "'")
                .add("gender=" + gender)
                .add("residence=" + residence)
                .toString();
    }
}
