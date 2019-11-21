package dunder.mifflin.persistence.daos;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.daos.generics.DAO;
import dunder.mifflin.persistence.pojos.Avatar;

import java.util.Optional;

public interface AvatarDAO extends DAO<Avatar, Long> {

    /**
     * @param person who is portrayed in the avatar
     * @param url    the avatar image path
     * @return the avatar just stored
     * @throws DAOException if an error occurred during the information retrieving
     */
    Avatar store(long person, String url) throws DAOException;


    /**
     * @param person who is portrayed in the photo
     * @return the person's avatar if present
     * @throws DAOException if an error occurred during the information retrieving
     */
    Optional<Avatar> remove(long person) throws DAOException;

}
