package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.PersonDAO;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.jdbc.generics.JDBC;
import dunder.mifflin.persistence.pojos.Person;
import org.jooq.DSLContext;
import org.jooq.impl.DSL;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistence.jdbc.jooq.Tables.*;
import static dunder.mifflin.persistence.jdbc.utils.Queries.current;
import static dunder.mifflin.persistence.jdbc.utils.Queries.uncheckedField;
import static org.jooq.impl.DSL.nvl;

public class PersonJDBC extends JDBC implements PersonDAO {

    public PersonJDBC(DSLContext context) {
        super(context);
    }

    @Override
    public Optional<Person> by(String email) {
        return context
                .select(PERSON.asterisk().except(PERSON.PASSWORD))
                .from(PERSON)
                .where(PERSON.EMAIL.eq(email))
                .fetchOptionalInto(Person.class);
    }

    @Override
    public Stream<Person> contains(String name, String email, String fc) throws DAOException {
        return context
                .select(PERSON.asterisk().except(PERSON.PASSWORD))
                .from(PERSON)
                .where(DSL.concat(PERSON.NAME.concat(" "), PERSON.SURNAME).containsIgnoreCase(name))
                .and(PERSON.EMAIL.containsIgnoreCase(email))
                .and(PERSON.FC.containsIgnoreCase(fc))
                .orderBy(PERSON.NAME)
                .fetchInto(Person.class)
                .stream();
    }

    @Override
    public Map<Long, List<Person>> qualifiedFor(Long... exams) throws DAOException {
        return context
                .select(nvl(SP_QUALIFICATION.EXAM, HS_QUALIFICATION.EXAM), PERSON.asterisk().except(PERSON.PASSWORD))
                .from(PERSON)
                .leftJoin(SP_QUALIFICATION).on(SP_QUALIFICATION.SPECIALIST.eq(PERSON.ID))
                .leftJoin(HS_QUALIFICATION).on(HS_QUALIFICATION.DOCTOR.eq(PERSON.ID))
                .where(nvl(SP_QUALIFICATION.EXAM, HS_QUALIFICATION.EXAM).in(exams))
                .orderBy(PERSON.NAME)
                .fetchGroups(nvl(SP_QUALIFICATION.EXAM, HS_QUALIFICATION.EXAM), (r) -> new Person(
                        r.get(PERSON.ID),
                        r.get(PERSON.EMAIL),
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
    public Stream<Person> patients(long general, String name, String email, String fc) {
        return context
                .select(PERSON.asterisk().except(PERSON.PASSWORD))
                .from(PERSON)
                .innerJoin(FOLLOWS).on(FOLLOWS.PATIENT.eq(PERSON.ID))
                .innerJoin(current()).on(FOLLOWS.ID.eq(uncheckedField(current(), FOLLOWS.ID)))
                .where(FOLLOWS.GENERAL.eq(general))
                .and(DSL.concat(PERSON.NAME.concat(" "), PERSON.SURNAME).containsIgnoreCase(name))
                .and(PERSON.EMAIL.containsIgnoreCase(email))
                .and(PERSON.FC.containsIgnoreCase(fc))
                .orderBy(PERSON.NAME)
                .fetchInto(Person.class)
                .stream();
    }

    @Override
    public Stream<Person> residence(long province) {
        return context
                .select(PERSON.asterisk().except(PERSON.PASSWORD))
                .from(PERSON)
                .innerJoin(CITY).on(PERSON.RESIDENCE.eq(CITY.ID))
                .where(CITY.PROVINCE.eq(province))
                .orderBy(PERSON.NAME)
                .fetchInto(Person.class)
                .stream();
    }

    @Override
    public Optional<Person> patient(long follows) throws DAOException {
        return context
                .select(PERSON.asterisk().except(PERSON.PASSWORD))
                .from(PERSON)
                .innerJoin(FOLLOWS).on(PERSON.ID.eq(FOLLOWS.PATIENT))
                .where(FOLLOWS.ID.eq(follows))
                .orderBy(PERSON.NAME)
                .fetchOptionalInto(Person.class);
    }

    @Override
    public Map<Long, Person> patients(Long... follows) throws DAOException {
        return context
                .select(FOLLOWS.ID, PERSON.asterisk().except(PERSON.PASSWORD))
                .from(PERSON)
                .innerJoin(FOLLOWS).on(PERSON.ID.eq(FOLLOWS.PATIENT))
                .where(FOLLOWS.ID.in(follows))
                .fetchMap(FOLLOWS.ID, (r) -> new Person(
                        r.get(PERSON.ID),
                        r.get(PERSON.EMAIL),
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
    public long count() {
        return context
                .fetchCount(PERSON);
    }

    @Override
    public Optional<Person> byKey(Long key) {
        return context
                .select(PERSON.asterisk().except(PERSON.PASSWORD))
                .from(PERSON)
                .where(PERSON.ID.eq(key))
                .fetchOptionalInto(Person.class);
    }

    @Override
    public Map<Long, Person> byKeys(Long... keys) throws DAOException {
        return context
                .select(PERSON.asterisk().except(PERSON.PASSWORD))
                .from(PERSON)
                .where(PERSON.ID.in(keys))
                .fetchMap(PERSON.ID, Person.class);
    }

    @Override
    public Stream<Person> fetchAll() {
        return context
                .select(PERSON.asterisk().except(PERSON.PASSWORD))
                .from(PERSON)
                .orderBy(PERSON.NAME)
                .fetchInto(Person.class)
                .stream();
    }
}
