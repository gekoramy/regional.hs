package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.MedicineDAO;
import dunder.mifflin.persistance.jdbc.generics.JDBC;
import dunder.mifflin.persistance.pojos.Medicine;
import org.jooq.DSLContext;

import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistance.jdbc.jooq.Tables.MEDICINE;

public class MedicineJDBC extends JDBC implements MedicineDAO {

    public MedicineJDBC(DSLContext context) {
        super(context);
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
    public Stream<Medicine> fetchAll() {
        return context
                .select()
                .from(MEDICINE)
                .fetchStreamInto(Medicine.class);
    }
}
