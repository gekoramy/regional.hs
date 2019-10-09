package dunder.mifflin.persistance.daos;

import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.daos.generics.DAO;
import dunder.mifflin.persistance.pojos.Person;

import java.util.Optional;
import java.util.stream.Stream;

public interface PersonDAO extends DAO<Person, Long> {

    Optional<Person> by(String email) throws DAOException;

    Stream<Person> contains(String name, String email, String fc) throws DAOException;

    Stream<Person> qualifiedFor(long exam) throws DAOException;

    Stream<Person> patients(long general, String name, String email, String fc) throws DAOException;

    Stream<Person> residence(long province) throws DAOException;

}
