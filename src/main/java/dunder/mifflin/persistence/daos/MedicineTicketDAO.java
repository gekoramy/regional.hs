package dunder.mifflin.persistence.daos;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.daos.generics.DAO;
import dunder.mifflin.persistence.pojos.MedicineTicket;

import java.math.BigDecimal;
import java.util.Optional;
import java.util.stream.Stream;

public interface MedicineTicketDAO extends DAO<MedicineTicket, Long> {

    /**
     * @param prescription the prescription which refers to
     * @param amount       the amount
     * @return the medicine ticket just stored
     * @throws DAOException if an error occurred during the information retrieving
     */
    MedicineTicket insert(long prescription, BigDecimal amount) throws DAOException;

    /**
     * @param prescription the prescription which refers to
     * @return the medicine ticket just removed
     * @throws DAOException if an error occurred during the information retrieving
     */
    Optional<MedicineTicket> remove(long prescription) throws DAOException;

    /**
     * @param patient who regars the medicine ticket
     * @return every medicine tickets which concerns the patient {@code patient}
     * @throws DAOException if an error occurred during the information retrieving
     */
    Stream<MedicineTicket> concerns(long patient) throws DAOException;
}
