package dunder.mifflin.persistance.daos;

import dunder.mifflin.persistance.daos.generics.DAO;
import dunder.mifflin.persistance.pojos.Medicine;

import java.util.stream.Stream;

public interface MedicineDAO extends DAO<Medicine, Long> {

    Stream<Medicine> contains(String pattern);

}
