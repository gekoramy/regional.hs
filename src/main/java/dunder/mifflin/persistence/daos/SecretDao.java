package dunder.mifflin.persistence.daos;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.daos.generics.DAO;
import dunder.mifflin.persistence.pojos.Secret;

import java.util.Optional;

public interface SecretDao extends DAO<Secret, Long> {

    Optional<Secret> by(String email) throws DAOException;

    Optional<Secret> store(long person, String password) throws DAOException;

}
