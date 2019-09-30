package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.PersonDAO;
import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.jdbc.generics.JDBC;
import dunder.mifflin.persistance.pojos.Person;
import org.jooq.DSLContext;

import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistance.jdbc.jooq.Tables.*;

public class PersonJDBC extends JDBC implements PersonDAO {

    public PersonJDBC(DSLContext context) {
        super(context);
    }

    @Override
    public Optional<Person> by(String email) {
        return context
                .select()
                .from(PERSON)
                .where(PERSON.EMAIL.eq(email))
                .fetchOptionalInto(Person.class);
    }

    @Override
    public Optional<Person> update(long person, String password) throws DAOException {
        return context
                .update(PERSON)
                .set(PERSON.PASSWORD, password)
                .where(PERSON.ID.eq(person))
                .returning(PERSON.asterisk())
                .fetchOptional()
                .map((r) -> new Person(
                        r.get(PERSON.ID),
                        r.get(PERSON.EMAIL),
                        r.get(PERSON.PASSWORD),
                        r.get(PERSON.NAME),
                        r.get(PERSON.SURNAME),
                        r.get(PERSON.BIRTHDAY),
                        r.get(PERSON.BIRTHPLACE),
                        r.get(PERSON.FC),
                        r.get(PERSON.GENDER),
                        r.get(PERSON.RESIDENCE)
                ));
    }

    @Override
    public Stream<Person> qualifiedFor(long exam) {
        return context
                .select(PERSON.asterisk())
                .from(PERSON)
                .leftJoin(SP_QUALIFICATION).on(SP_QUALIFICATION.SPECIALIST.eq(PERSON.ID))
                .leftJoin(HS_QUALIFICATION).on(HS_QUALIFICATION.DOCTOR.eq(PERSON.ID))
                .where(SP_QUALIFICATION.EXAM.eq(exam).or(HS_QUALIFICATION.EXAM.eq(exam)))
                .fetchStreamInto(Person.class);
    }

    @Override
    public Stream<Person> patients(long general) {
        return context
                .select(PERSON.asterisk())
                .from(PERSON)
                .innerJoin(FOLLOWS).on(FOLLOWS.PATIENT.eq(PERSON.ID))
                .where(FOLLOWS.GENERAL.eq(general))
                .fetchStreamInto(Person.class);
    }

    @Override
    public Stream<Person> residence(long province) {
        return context
                .select(PERSON.asterisk())
                .from(PERSON)
                .innerJoin(CITY).on(PERSON.RESIDENCE.eq(CITY.ID))
                .where(CITY.PROVINCE.eq(province))
                .fetchStreamInto(Person.class);
    }

    @Override
    public long count() {
        return context
                .fetchCount(PERSON);
    }

    @Override
    public Optional<Person> byKey(Long key) {
        return context
                .select()
                .from(PERSON)
                .where(PERSON.ID.eq(key))
                .fetchOptionalInto(Person.class);
    }

    @Override
    public Stream<Person> fetchAll() {
        return context
                .select()
                .from(PERSON)
                .fetchStreamInto(Person.class);
    }
}
