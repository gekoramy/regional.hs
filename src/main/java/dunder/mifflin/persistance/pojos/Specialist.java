package dunder.mifflin.persistance.pojos;

import java.time.LocalDate;

public class Specialist extends Person {

    public Specialist(Long id, String email, String name, String surname, LocalDate birthday, Long birthplace, String fc, Boolean gender, Long residence) {
        super(id, email, name, surname, birthday, birthplace, fc, gender, residence);
    }
}
