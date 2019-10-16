package dunder.mifflin.persistence.daos;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.daos.generics.DAO;
import dunder.mifflin.persistence.pojos.Avatar;

import java.util.Optional;

public interface AvatarDAO extends DAO<Avatar, Long> {

    Avatar store(long person, String url) throws DAOException;

    Optional<Avatar> remove(long person) throws DAOException;

}
