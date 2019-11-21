package dunder.mifflin.persistence.daos;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.daos.generics.DAO;
import dunder.mifflin.persistence.pojos.Report;

import java.util.Optional;

public interface ReportDAO extends DAO<Report, Long> {

    /**
     * @param ticket the ticket which depends on
     * @param note   the report
     * @return the report just stored
     * @throws DAOException if an error occurred during the information retrieving
     */
    Report insert(long ticket, String note) throws DAOException;

    /**
     * @param ticket the ticket which depends on
     * @return the report just removed
     * @throws DAOException if an error occurred during the information retrieving
     */
    Optional<Report> remove(long ticket) throws DAOException;

}
