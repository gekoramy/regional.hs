package dunder.mifflin.persistance.daos;

import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.daos.generics.DAO;
import dunder.mifflin.persistance.pojos.General;

import java.util.Optional;
import java.util.stream.Stream;

public interface GeneralDAO extends DAO<General, Long> {

    Optional<General> follows(long patient) throws DAOException;

    Stream<General> suitable(long patient, String name, String mail, String fc) throws DAOException;

    General entrusts(long patient, long general) throws DAOException;

    Optional<General> undo(long patient) throws DAOException;

    Optional<General> general(long follows) throws DAOException;
}
