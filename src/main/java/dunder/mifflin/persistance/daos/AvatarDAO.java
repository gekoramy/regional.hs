package dunder.mifflin.persistance.daos;

import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.daos.generics.DAO;
import dunder.mifflin.persistance.pojos.Avatar;

import java.util.Optional;

public interface AvatarDAO extends DAO<Avatar, Long> {

    Avatar store(long person, String url) throws DAOException;

    Optional<Avatar> remove(long person) throws DAOException;

}
