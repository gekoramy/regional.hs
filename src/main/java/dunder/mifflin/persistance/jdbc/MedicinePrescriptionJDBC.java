package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.MedicinePrescriptionDAO;
import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.jdbc.generics.JDBC;
import dunder.mifflin.persistance.jdbc.utils.Queries;
import dunder.mifflin.persistance.pojos.MedicinePrescription;
import org.jooq.DSLContext;
import org.jooq.impl.DSL;

import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistance.jdbc.jooq.Tables.*;

public class MedicinePrescriptionJDBC extends JDBC implements MedicinePrescriptionDAO {

    public MedicinePrescriptionJDBC(DSLContext context) {
        super(context);
    }

    @Override
    public MedicinePrescription insert(long patient, long medicine, int quantity) {
        return context.transactionResult((config) -> {

            final var insert = DSL.using(config)
                    .select()
                    .from(MEDICINE)
                    .where(MEDICINE.ID.eq(medicine))
                    .fetchOne();

            if (null == insert) {
                throw new IllegalArgumentException(String.format("There is no medicine with id : %d", medicine));
            }

            final var prescription = Queries.prescription(patient).apply(DSL.using(config));

            return DSL.using(config)
                    .insertInto(PR_MEDICINE)
                    .columns(PR_MEDICINE.PRESCRIPTION, PR_MEDICINE.MEDICINE, PR_MEDICINE.QUANTITY)
                    .values(prescription.id(), medicine, quantity)
                    .returning(PR_MEDICINE.asterisk())
                    .fetchOptional()
                    .map((r) -> new MedicinePrescription(
                            prescription.id(),
                            prescription.place(),
                            prescription.date(),
                            prescription.concerns(),
                            insert.get(MEDICINE.ID),
                            insert.get(MEDICINE.NAME),
                            insert.get(MEDICINE.INFO),
                            r.get(PR_MEDICINE.QUANTITY)
                    ))
                    .get();
        });
    }

    @Override
    public Optional<MedicinePrescription> remove(long prescription) {
        return context.transactionResult((config) -> {

            final var delete = DSL.using(config)
                    .select()
                    .from(PR_MEDICINE)
                    .innerJoin(MEDICINE).on(PR_MEDICINE.MEDICINE.eq(MEDICINE.ID))
                    .where(PR_MEDICINE.PRESCRIPTION.eq(prescription))
                    .fetchOne();

            return null == delete
                    ? Optional.empty()
                    : DSL.using(config)
                    .deleteFrom(PRESCRIPTION)
                    .where(PRESCRIPTION.ID.eq(delete.get(PR_MEDICINE.PRESCRIPTION)))
                    .returning(PRESCRIPTION.asterisk())
                    .fetchOptional()
                    .map((r) -> new MedicinePrescription(
                            r.get(PRESCRIPTION.ID),
                            r.get(PRESCRIPTION.PLACE),
                            r.get(PRESCRIPTION.DATE),
                            r.get(PRESCRIPTION.CONCERNS),
                            delete.get(MEDICINE.ID),
                            delete.get(MEDICINE.NAME),
                            delete.get(MEDICINE.INFO),
                            delete.get(PR_MEDICINE.QUANTITY)
                    ));
        });
    }

    @Override
    public Stream<MedicinePrescription> concerns(long patient) {
        return context
                .select(PRESCRIPTION.asterisk(), MEDICINE.asterisk(), PR_MEDICINE.QUANTITY)
                .from(PRESCRIPTION)
                .innerJoin(PR_MEDICINE).on(PRESCRIPTION.ID.eq(PR_MEDICINE.PRESCRIPTION))
                .innerJoin(MEDICINE).on(PR_MEDICINE.MEDICINE.eq(MEDICINE.ID))
                .innerJoin(FOLLOWS).on(PRESCRIPTION.CONCERNS.eq(FOLLOWS.ID))
                .where(FOLLOWS.PATIENT.eq(patient))
                .orderBy(PRESCRIPTION.DATE)
                .fetchStreamInto(MedicinePrescription.class);
    }

    @Override
    public long count() {
        return context
                .fetchCount(PR_MEDICINE);
    }

    @Override
    public Optional<MedicinePrescription> byKey(Long key) {
        return context
                .select(PRESCRIPTION.asterisk(), MEDICINE.asterisk(), PR_MEDICINE.QUANTITY)
                .from(PRESCRIPTION)
                .innerJoin(PR_MEDICINE).on(PRESCRIPTION.ID.eq(PR_MEDICINE.PRESCRIPTION))
                .innerJoin(MEDICINE).on(PR_MEDICINE.MEDICINE.eq(MEDICINE.ID))
                .where(PRESCRIPTION.ID.eq(key))
                .fetchOptionalInto(MedicinePrescription.class);
    }

    @Override
    public Map<Long, MedicinePrescription> byKeys(Long... keys) throws DAOException {
        return context
                .select(PRESCRIPTION.asterisk(), MEDICINE.asterisk(), PR_MEDICINE.QUANTITY)
                .from(PRESCRIPTION)
                .innerJoin(PR_MEDICINE).on(PRESCRIPTION.ID.eq(PR_MEDICINE.PRESCRIPTION))
                .innerJoin(MEDICINE).on(PR_MEDICINE.MEDICINE.eq(MEDICINE.ID))
                .where(PRESCRIPTION.ID.in(keys))
                .fetchMap(PRESCRIPTION.ID, MedicinePrescription.class);
    }

    @Override
    public Stream<MedicinePrescription> fetchAll() {
        return context
                .select(PRESCRIPTION.asterisk(), MEDICINE.asterisk(), PR_MEDICINE.QUANTITY)
                .from(PRESCRIPTION)
                .innerJoin(PR_MEDICINE).on(PRESCRIPTION.ID.eq(PR_MEDICINE.PRESCRIPTION))
                .innerJoin(MEDICINE).on(PR_MEDICINE.MEDICINE.eq(MEDICINE.ID))
                .orderBy(PRESCRIPTION.DATE)
                .fetchStreamInto(MedicinePrescription.class);
    }
}
