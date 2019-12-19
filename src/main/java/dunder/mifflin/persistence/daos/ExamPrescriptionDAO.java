package dunder.mifflin.persistence.daos;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.daos.generics.DAO;
import dunder.mifflin.persistence.pojos.ExamPrescription;

import java.time.OffsetDateTime;
import java.util.Optional;
import java.util.stream.Stream;

public interface ExamPrescriptionDAO extends DAO<ExamPrescription, Long> {

    /**
     * @param patient who regards the prescription
     * @param exam    the exam to be prescribed
     * @return the exam prescription just stored
     * @throws DAOException if an error occurred during the information retrieving
     */
    ExamPrescription insert(long patient, long exam) throws DAOException;

    /**
     * @param prescription the exam prescription's id to remove
     * @return the exam prescription just removed
     * @throws DAOException if an error occured during the information retrieving
     */
    Optional<ExamPrescription> remove(long prescription) throws DAOException;

    /**
     * @param patient who concerns the exam prescriptions
     * @return every exam prescriptions which concerns to the {@code patient}
     * @throws DAOException if an error occurred during the information retrieving
     */
    Stream<ExamPrescription> concerns(long patient) throws DAOException;

    /**
     * @param patient who concerns the exam prescriptions
     * @param after   lower limit
     * @param limit   maximum number of records
     * @return at most {@code limit} exam prescriptions which concerns to the {@code patient} and comes before {@code before}
     * @throws DAOException if an error occurred during the information retrieving
     */
    Stream<ExamPrescription> concernsAfter(long patient, OffsetDateTime after, int limit) throws DAOException;

    /**
     * @param patient who concerns the exam prescriptions
     * @param before  upper limit
     * @param limit   maximum number of records
     * @return at most {@code limit} exam prescriptions which concerns to the {@code patient} and comes before {@code before}
     * @throws DAOException if an error occurred during the information retrieving
     */
    Stream<ExamPrescription> concernsBefore(long patient, OffsetDateTime before, int limit) throws DAOException;

    /**
     * @param general who has prescribed the exam prescriptions
     * @return every exam prescriptions which had been prescribed by {@code general}
     * @throws DAOException if an error occurred during the information retrieving
     */
    Stream<ExamPrescription> prescribedBy(long general) throws DAOException;

    /**
     * @param province where the prescription had been prescribed
     * @return every exam prescriptions which had been prescribed in {@code province}
     * @throws DAOException if an error occurred during the information retrieving
     */
    Stream<ExamPrescription> tookIn(long province) throws DAOException;

}
