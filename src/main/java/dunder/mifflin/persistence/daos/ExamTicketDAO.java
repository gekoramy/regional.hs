package dunder.mifflin.persistence.daos;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.daos.generics.DAO;
import dunder.mifflin.persistence.pojos.ExamTicket;

import java.math.BigDecimal;
import java.util.Optional;
import java.util.stream.Stream;

public interface ExamTicketDAO extends DAO<ExamTicket, Long> {

    /**
     * @param prescription the prescription which refers to
     * @param amount       the amount
     * @param responsible  the propose responsible
     * @return the exam ticket just stored
     * @throws DAOException if an error occurred during the information retrieving
     */
    ExamTicket insert(long prescription, BigDecimal amount, long responsible) throws DAOException;

    /**
     * @param prescription the prescription which refers to
     * @return the exam ticket just removed
     * @throws DAOException if an error occurred during the information retrieving
     */
    Optional<ExamTicket> remove(long prescription) throws DAOException;

    /**
     * @param patient who regards the exam tickets
     * @return every exam tickets which concerns the patient {@code patient}
     * @throws DAOException if an error occured during the information retrieving
     */
    Stream<ExamTicket> concerns(long patient) throws DAOException;

}
