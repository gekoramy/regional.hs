package dunder.mifflin.persistence.daos;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.daos.generics.DAO;
import dunder.mifflin.persistence.pojos.Ticket;

import java.math.BigDecimal;
import java.util.Optional;
import java.util.stream.Stream;

public interface TicketDAO extends DAO<Ticket, Long> {

    Ticket insert(long prescription, BigDecimal amount) throws DAOException;

    Optional<Ticket> remove(long prescription) throws DAOException;

    Stream<Ticket> concerns(long patient) throws DAOException;

}
