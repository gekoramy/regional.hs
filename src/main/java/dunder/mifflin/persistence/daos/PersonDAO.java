package dunder.mifflin.persistence.daos;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.daos.generics.DAO;
import dunder.mifflin.persistence.pojos.Person;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

public interface PersonDAO extends DAO<Person, Long> {

    /**
     * @param email person's email
     * @return the unique person whose email is {@code email}
     * @throws DAOException if an error occurred during the information retrieving
     */
    Optional<Person> by(String email) throws DAOException;

    /**
     * @param name  filter results by person's name
     * @param email filter results by person's email
     * @param fc    filter results by person's fiscal code
     * @return every person who respects the filters above
     * @throws DAOException if an error occurred during the information retrieving
     */
    Stream<Person> contains(String name, String email, String fc) throws DAOException;

    /**
     * @param exams exams' id
     * @return foreach exam passed as parameter, an entry whose value is a list of people qualified for the exam
     * @throws DAOException if an error occurred during the information retrieving
     */
    Map<Long, List<Person>> qualifiedFor(Long... exams) throws DAOException;

    /**
     * @param general filter results by person's current general
     * @param name    filter results by person's name
     * @param email   filter results by person's email
     * @param fc      filter resultrs bu person's fiscal code
     * @return every person who respects the filters above
     * @throws DAOException if an error occurred during the information retrieving
     */
    Stream<Person> patients(long general, String name, String email, String fc) throws DAOException;

    /**
     * @param province filter results by person's residence
     * @return every person whom residence is in {@code province}
     * @throws DAOException if an error occurred during the information retrieving
     */
    Stream<Person> residence(long province) throws DAOException;

    /**
     * @param follows follows' id
     * @return the patient of the follows entry
     * @throws DAOException if an error occurred during the information retrieving
     */
    Optional<Person> patient(long follows) throws DAOException;

    /**
     * @param follows follows' id
     * @return foreach follows passed as parameter, an entry whose value is the patient
     * @throws DAOException if an error occurred during the information retrieving
     */
    Map<Long, Person> patients(Long... follows) throws DAOException;
}
