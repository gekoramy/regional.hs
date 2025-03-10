package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.MedicineDAO;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.jdbc.generics.JDBC;
import dunder.mifflin.persistence.pojos.Medicine;
import org.jooq.DSLContext;

import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistence.jdbc.jooq.Tables.MEDICINE;

public class MedicineJDBC extends JDBC implements MedicineDAO {

    public MedicineJDBC(DSLContext context) {
        super(context);
    }

    @Override
    public Stream<Medicine> contains(String pattern) {
        return context
                .select()
                .from(MEDICINE)
                .where(MEDICINE.NAME.containsIgnoreCase(pattern))
                .or(MEDICINE.INFO.containsIgnoreCase(pattern))
                .fetchInto(Medicine.class)
                .stream();
    }

    @Override
    public long count() {
        return context
                .fetchCount(MEDICINE);
    }

    @Override
    public Optional<Medicine> byKey(Long key) {
        return context
                .select()
                .from(MEDICINE)
                .where(MEDICINE.ID.eq(key))
                .fetchOptionalInto(Medicine.class);
    }

    @Override
    public Map<Long, Medicine> byKeys(Long... keys) throws DAOException {
        return context
                .select()
                .from(MEDICINE)
                .where(MEDICINE.ID.in(keys))
                .fetchMap(MEDICINE.ID, Medicine.class);
    }

    @Override
    public Stream<Medicine> fetchAll() {
        return context
                .select()
                .from(MEDICINE)
                .fetchInto(Medicine.class)
                .stream();
    }
}
