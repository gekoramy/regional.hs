package dunder.mifflin.persistence.daos;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.daos.generics.DAO;
import dunder.mifflin.persistence.pojos.SpExam;

import java.util.stream.Stream;

public interface SpExamDAO extends DAO<SpExam, Long> {

    Stream<SpExam> qualifiedFor(long specialist) throws DAOException;

    Stream<SpExam> contains(String pattern) throws DAOException;

}
