package dunder.mifflin.persistence.daos;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.daos.generics.DAO;
import dunder.mifflin.persistence.pojos.General;

import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

public interface GeneralDAO extends DAO<General, Long> {

    /**
     * @param patient patient's id
     * @return the current general who is following the patient {@code patient} if any
     * @throws DAOException if an error occurred during the information retrieving
     */
    Optional<General> follows(long patient) throws DAOException;

    /**
     * @param patient patient's id
     * @param name    filter by general's name
     * @param mail    filter by general's mail
     * @param fc      filter by general's fc
     * @return the list of all suitable generals available for the patient {@code patient} who respects the filters above
     * @throws DAOException if an error occurred during the information retrieving
     */
    Stream<General> suitable(long patient, String name, String mail, String fc) throws DAOException;

    /**
     * @param patient patient's id
     * @param general the general's to entrust
     * @return the general just entrusted
     * @throws DAOException if an error occurred during the information retrieving
     */
    General entrusts(long patient, long general) throws DAOException;

    /**
     * @param patient patient's id
     * @return the general just un-entrusted
     * @throws DAOException if an error occurred during the information retrieving
     */
    Optional<General> undo(long patient) throws DAOException;

    /**
     * @param follows follows'id
     * @return the general of the follows entry
     * @throws DAOException if an error occurred during the information retrieving
     */
    Optional<General> general(long follows) throws DAOException;

    /**
     * @param follows follows' id
     * @return the map of current generals required
     * @throws DAOException if an error occurred during the information retrieving
     */
    Map<Long, General> generals(Long... follows) throws DAOException;
}
