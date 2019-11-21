package dunder.mifflin.persistence.daos;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.daos.generics.DAO;
import dunder.mifflin.persistence.pojos.Recover;

import java.util.Optional;
import java.util.UUID;

public interface TokenDAO extends DAO<Recover, Long> {

    /**
     * @param person person's id
     * @return token just stored
     * @throws DAOException if an error occurred during the information retrieving
     */
    Recover store(long person) throws DAOException;

    /**
     * @param person person's id
     * @return token just removed
     * @throws DAOException if an error occurred during the information retrieving
     */
    Optional<Recover> remove(long person) throws DAOException;

    /**
     * @param token unique token value
     * @return token whose value equals to {@code token}
     * @throws DAOException if an error occurred during the information retrieving
     */
    Optional<Recover> by(UUID token) throws DAOException;

}
