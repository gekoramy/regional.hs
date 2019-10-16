package dunder.mifflin.persistence.daos;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.daos.generics.DAO;
import dunder.mifflin.persistence.pojos.Recover;

import java.util.Optional;
import java.util.UUID;

public interface RecoverDAO extends DAO<Recover, Long> {

    Recover store(long person) throws DAOException;

    Optional<Recover> remove(long person) throws DAOException;

    Optional<Recover> by(UUID token) throws DAOException;

}
