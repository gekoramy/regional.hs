package dunder.mifflin.persistance.daos;

import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.daos.generics.DAO;
import dunder.mifflin.persistance.pojos.Secret;

import java.util.Optional;

public interface SecretDao extends DAO<Secret, Long> {

    Optional<Secret> by(String email) throws DAOException;

    Optional<Secret> store(long person, String password) throws DAOException;

}
