package dunder.mifflin.persistence.daos;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.daos.generics.DAO;
import dunder.mifflin.persistence.pojos.MedicineTicket;

import java.math.BigDecimal;
import java.util.Optional;
import java.util.stream.Stream;

public interface MedicineTicketDAO extends DAO<MedicineTicket, Long> {

    MedicineTicket insert(long prescription, BigDecimal amount) throws DAOException;

    Optional<MedicineTicket> remove(long prescription) throws DAOException;

    Stream<MedicineTicket> concerns(long patient) throws DAOException;
}
