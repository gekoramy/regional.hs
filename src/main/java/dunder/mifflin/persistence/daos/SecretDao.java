package dunder.mifflin.persistence.daos;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.daos.generics.DAO;
import dunder.mifflin.persistence.pojos.Secret;

import java.util.Optional;

public interface SecretDao extends DAO<Secret, Long> {

    /**
     * @param email the person's current email
     * @return the current password of the person whom email equals {@code email}
     * @throws DAOException if an error occurred during the information retrieving
     */
    Optional<Secret> by(String email) throws DAOException;

    /**
     * @param person   the person's id
     * @param password the password to store
     * @return the password just stored
     * @throws DAOException if an error occurred during the information retrieving
     */
    Optional<Secret> store(long person, String password) throws DAOException;

}
