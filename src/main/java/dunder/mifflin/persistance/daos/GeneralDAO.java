package dunder.mifflin.persistance.daos;

import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.daos.generics.DAO;
import dunder.mifflin.persistance.pojos.General;

import java.util.Optional;

public interface GeneralDAO extends DAO<General, Long> {

    Optional<General> by(long patient) throws DAOException;

}
