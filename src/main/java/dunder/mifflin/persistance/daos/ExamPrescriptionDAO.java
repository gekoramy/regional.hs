package dunder.mifflin.persistance.daos;

import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.daos.generics.DAO;
import dunder.mifflin.persistance.pojos.ExamPrescription;

import java.util.Optional;
import java.util.stream.Stream;

public interface ExamPrescriptionDAO extends DAO<ExamPrescription, Long> {

    ExamPrescription insert(long patient, long exam) throws DAOException;

    Optional<ExamPrescription> remove(long prescription) throws DAOException;

    Stream<ExamPrescription> concerns(long patient, String filter) throws DAOException;

    Stream<ExamPrescription> prescribedBy(long general) throws DAOException;

    Stream<ExamPrescription> tookIn(long province) throws DAOException;

}
