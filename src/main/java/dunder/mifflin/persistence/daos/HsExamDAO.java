package dunder.mifflin.persistence.daos;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.daos.generics.DAO;
import dunder.mifflin.persistence.pojos.HsExam;

import java.util.stream.Stream;

public interface HsExamDAO extends DAO<HsExam, Long> {

    Stream<HsExam> qualifiedFor(long hsDoctor) throws DAOException;

    Stream<HsExam> contains(String pattern) throws DAOException;

}
