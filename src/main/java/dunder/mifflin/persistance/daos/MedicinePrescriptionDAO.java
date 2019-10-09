package dunder.mifflin.persistance.daos;

import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.daos.generics.DAO;
import dunder.mifflin.persistance.pojos.MedicinePrescription;

import java.util.Optional;
import java.util.stream.Stream;

public interface MedicinePrescriptionDAO extends DAO<MedicinePrescription, Long> {

    MedicinePrescription insert(long patient, long medicine, int quantity) throws DAOException;

    Optional<MedicinePrescription> remove(long prescription) throws DAOException;

    Stream<MedicinePrescription> concerns(long patient, String filter) throws DAOException;

}
