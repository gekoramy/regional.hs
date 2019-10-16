package dunder.mifflin.persistence.daos;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.daos.generics.DAO;
import dunder.mifflin.persistence.pojos.Report;

import java.util.Optional;

public interface ReportDAO extends DAO<Report, Long> {

    Report insert(long prescription, long responsible, String note) throws DAOException;

    Optional<Report> remove(long prescription) throws DAOException;

}
