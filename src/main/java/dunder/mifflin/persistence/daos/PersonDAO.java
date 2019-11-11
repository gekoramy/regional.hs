package dunder.mifflin.persistence.daos;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.daos.generics.DAO;
import dunder.mifflin.persistence.pojos.Person;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

public interface PersonDAO extends DAO<Person, Long> {

    Optional<Person> by(String email) throws DAOException;

    Stream<Person> contains(String name, String email, String fc) throws DAOException;

    Map<Long, List<Person>> qualifiedFor(Long... exams) throws DAOException;

    Stream<Person> patients(long general, String name, String email, String fc) throws DAOException;

    Stream<Person> residence(long province) throws DAOException;

    Optional<Person> patient(long follows) throws DAOException;

    Map<Long, Person> patients(Long... follows) throws DAOException;
}
