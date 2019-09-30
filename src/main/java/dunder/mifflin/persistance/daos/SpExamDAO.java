package dunder.mifflin.persistance.daos;

import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.daos.generics.DAO;
import dunder.mifflin.persistance.pojos.SpExam;

import java.util.stream.Stream;

public interface SpExamDAO extends DAO<SpExam, Long> {

    Stream<SpExam> qualifiedFor(long specialist) throws DAOException;

}
