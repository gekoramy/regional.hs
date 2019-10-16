package dunder.mifflin.persistence.daos;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.daos.generics.DAO;
import dunder.mifflin.persistence.pojos.General;

import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

public interface GeneralDAO extends DAO<General, Long> {

    Optional<General> follows(long patient) throws DAOException;

    Stream<General> suitable(long patient, String name, String mail, String fc) throws DAOException;

    General entrusts(long patient, long general) throws DAOException;

    Optional<General> undo(long patient) throws DAOException;

    Optional<General> general(long follows) throws DAOException;

    Map<Long, General> generals(Long... follows) throws DAOException;
}
