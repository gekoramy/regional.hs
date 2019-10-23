package dunder.mifflin.persistence.daos;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.daos.generics.DAO;
import dunder.mifflin.persistence.pojos.ExamTicket;

import java.math.BigDecimal;
import java.util.Optional;
import java.util.stream.Stream;

public interface ExamTicketDAO extends DAO<ExamTicket, Long> {

    ExamTicket insert(long prescription, BigDecimal amount, long responsible) throws DAOException;

    Optional<ExamTicket> remove(long prescription) throws DAOException;

    Stream<ExamTicket> concerns(long patient) throws DAOException;

}
