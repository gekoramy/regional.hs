package dunder.mifflin.persistance.daos;

import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.daos.generics.DAO;
import dunder.mifflin.persistance.pojos.HsExam;

import java.util.stream.Stream;

public interface HsExamDAO extends DAO<HsExam, Long> {

    Stream<HsExam> qualifiedFor(long hsDoctor) throws DAOException;

    Stream<HsExam> contains(String pattern) throws DAOException;

}
