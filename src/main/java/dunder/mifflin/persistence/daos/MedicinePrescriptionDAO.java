package dunder.mifflin.persistence.daos;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.daos.generics.DAO;
import dunder.mifflin.persistence.pojos.MedicinePrescription;

import java.time.OffsetDateTime;
import java.util.Optional;
import java.util.stream.Stream;

public interface MedicinePrescriptionDAO extends DAO<MedicinePrescription, Long> {

    /**
     * @param patient  who regards the prescription
     * @param medicine the medicine to be prescribed
     * @param quantity the quantity to be prescribed
     * @return the medicine prescription just stored
     * @throws DAOException if an error occurred during the information retrieving
     */
    MedicinePrescription insert(long patient, long medicine, int quantity) throws DAOException;

    /**
     * @param prescription the medicine prescription's to remove
     * @return the medicine prescription just removed
     * @throws DAOException if an error occurred during the information retrieving
     */
    Optional<MedicinePrescription> remove(long prescription) throws DAOException;

    /**
     * @param patient who concerns the medicine prescriptions
     * @return every medicine prescriptions which concerns to the {@code patient}
     * @throws DAOException if an error occurred during the information retrieving
     */
    Stream<MedicinePrescription> concerns(long patient) throws DAOException;

    /**
     * @param patient who concerns the medicine prescriptions
     * @param after   lower limit
     * @param limit   maximum number of records
     * @return at most {@code limit} medicine prescriptions which concerns to the {@code patient} and comes before {@code before}
     * @throws DAOException if an error occurred during the information retrieving
     */
    Stream<MedicinePrescription> concernsAfter(Long patient, OffsetDateTime after, int limit);

    /**
     * @param patient who concerns the medicine prescriptions
     * @param before  upper limit
     * @param limit   maximum number of records
     * @return at most {@code limit} medicine prescriptions which concerns to the {@code patient} and comes before {@code before}
     * @throws DAOException if an error occurred during the information retrieving
     */
    Stream<MedicinePrescription> concernsBefore(Long patient, OffsetDateTime before, int limit);

    /**
     * @param province where the prescription had been prescribed
     * @return every medicine prescriptions which had been prescribed in {@code province}
     * @throws DAOException if an error occurred during the information retrieving
     */
    Stream<MedicinePrescription> tookIn(long province) throws DAOException;
}
