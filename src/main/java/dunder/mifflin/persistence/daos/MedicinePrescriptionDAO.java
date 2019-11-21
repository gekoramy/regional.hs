package dunder.mifflin.persistence.daos;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.daos.generics.DAO;
import dunder.mifflin.persistence.pojos.MedicinePrescription;

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
     * @param filter  filter results by medicine's name
     * @return every medicine prescriptions which concerns to the {@code patient} and have medicine's name containing {@code filter}
     * @throws DAOException if an error occurred during the information retrieving
     */
    Stream<MedicinePrescription> concerns(long patient, String filter) throws DAOException;

    /**
     * @param province where the prescription had been prescribed
     * @return every medicine prescriptions which had been prescribed in {@code province}
     * @throws DAOException if an error occurred during the information retrieving
     */
    Stream<MedicinePrescription> tookIn(long province) throws DAOException;

}
