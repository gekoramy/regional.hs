package dunder.mifflin.persistence.daos;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.daos.generics.DAO;
import dunder.mifflin.persistence.pojos.HsExam;

import java.util.stream.Stream;

public interface HsExamDAO extends DAO<HsExam, Long> {

    /**
     * @param hsDoctor the health service doctor's id
     * @return every health service exam which the doctor {@code hsDoctor} is qualified for
     * @throws DAOException if an error occurred during the information retrieving
     */
    Stream<HsExam> qualifiedFor(long hsDoctor) throws DAOException;

    /**
     * @param pattern filter results by exam's name
     * @return every exams whose name contains {@code pattern}
     * @throws DAOException if an error occurred during the information retrieving
     */
    Stream<HsExam> contains(String pattern) throws DAOException;

}
