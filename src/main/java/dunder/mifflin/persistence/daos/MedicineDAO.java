package dunder.mifflin.persistence.daos;

import dunder.mifflin.persistence.daos.generics.DAO;
import dunder.mifflin.persistence.pojos.Medicine;

import java.util.stream.Stream;

public interface MedicineDAO extends DAO<Medicine, Long> {

    Stream<Medicine> contains(String pattern);

}
