package dunder.mifflin.persistence.daos;

import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.daos.generics.DAO;
import dunder.mifflin.persistence.pojos.Medicine;

import java.util.stream.Stream;

public interface MedicineDAO extends DAO<Medicine, Long> {

    /**
     * @param pattern filter by medicine's name
     * @return every medicine whose name contains {@code pattern}
     * @throws DAOException if an error occured during the information retrieving
     */
    Stream<Medicine> contains(String pattern) throws DAOException;

}
