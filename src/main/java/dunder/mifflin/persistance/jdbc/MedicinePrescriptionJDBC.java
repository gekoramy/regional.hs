package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.MedicinePrescriptionDAO;
import dunder.mifflin.persistance.jdbc.generics.JDBC;
import dunder.mifflin.persistance.jdbc.utils.Queries;
import dunder.mifflin.persistance.pojos.MedicinePrescription;
import org.jooq.DSLContext;
import org.jooq.impl.DSL;

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

            if (!DSL.using(config).fetchExists(MEDICINE, MEDICINE.ID.eq(medicine))) {
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
                            r.get(PR_MEDICINE.MEDICINE),
                            r.get(PR_MEDICINE.QUANTITY)
                    ))
                    .get();
        });
    }

    @Override
    public Optional<MedicinePrescription> remove(long prescription) {

        final var prMedicine = context
                .deleteFrom(PR_MEDICINE)
                .where(PR_MEDICINE.PRESCRIPTION.eq(prescription))
                .returning(PR_MEDICINE.asterisk())
                .fetchOptional();

        return prMedicine
                .flatMap((medicine) -> context
                        .deleteFrom(PRESCRIPTION)
                        .where(PRESCRIPTION.ID.eq(prescription))
                        .returning(PRESCRIPTION.asterisk())
                        .fetchOptional()
                        .map((r) -> new MedicinePrescription(
                                r.get(PRESCRIPTION.ID),
                                r.get(PRESCRIPTION.PLACE),
                                r.get(PRESCRIPTION.DATE),
                                r.get(PRESCRIPTION.CONCERNS),
                                medicine.get(PR_MEDICINE.MEDICINE),
                                medicine.get(PR_MEDICINE.QUANTITY)
                        ))
                );
    }

    @Override
    public Stream<MedicinePrescription> concerns(long patient) {
        return context
                .select(PRESCRIPTION.asterisk(), PR_MEDICINE.asterisk().except(PR_MEDICINE.PRESCRIPTION))
                .from(PRESCRIPTION)
                .innerJoin(PR_MEDICINE).on(PRESCRIPTION.ID.eq(PR_MEDICINE.PRESCRIPTION))
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
                .select(PRESCRIPTION.asterisk(), PR_MEDICINE.asterisk().except(PR_MEDICINE.PRESCRIPTION))
                .from(PRESCRIPTION)
                .innerJoin(PR_MEDICINE).on(PRESCRIPTION.ID.eq(PR_MEDICINE.PRESCRIPTION))
                .where(PRESCRIPTION.ID.eq(key))
                .fetchOptionalInto(MedicinePrescription.class);
    }

    @Override
    public Stream<MedicinePrescription> fetchAll() {
        return context
                .select(PRESCRIPTION.asterisk(), PR_MEDICINE.asterisk().except(PR_MEDICINE.PRESCRIPTION))
                .from(PRESCRIPTION)
                .innerJoin(PR_MEDICINE).on(PRESCRIPTION.ID.eq(PR_MEDICINE.PRESCRIPTION))
                .orderBy(PRESCRIPTION.DATE)
                .fetchStreamInto(MedicinePrescription.class);
    }
}
