package dunder.mifflin.persistance.daos;

import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.daos.generics.DAO;
import dunder.mifflin.persistance.pojos.Recover;

import java.util.Optional;
import java.util.UUID;

public interface RecoverDAO extends DAO<Recover, Long> {

    Recover store(long person) throws DAOException;

    Optional<Recover> remove(long person) throws DAOException;

    Optional<Recover> by(UUID token) throws DAOException;

}
