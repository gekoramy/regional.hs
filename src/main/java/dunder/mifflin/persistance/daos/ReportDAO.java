package dunder.mifflin.persistance.daos;

import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.daos.generics.DAO;
import dunder.mifflin.persistance.pojos.Report;

import java.util.Optional;

public interface ReportDAO extends DAO<Report, Long> {

    Report insert(long prescription, long responsible, String note) throws DAOException;

    Optional<Report> remove(long prescription) throws DAOException;

}
