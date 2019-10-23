package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.MedicinePrescriptionDAO;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.jdbc.generics.JDBC;
import dunder.mifflin.persistence.jdbc.utils.Queries;
import dunder.mifflin.persistence.pojos.MedicinePrescription;
import org.jooq.DSLContext;
import org.jooq.impl.DSL;

import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistence.jdbc.jooq.Tables.*;

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
                    .fetchOptional()
                    .orElseThrow(() -> new DAOException(String.format("There is no medicine with id : %d", medicine)));

            final var prescription = Queries.prescription(patient).apply(DSL.using(config));

            return DSL.using(config)
                    .insertInto(MEDICINE_PRESCRIPTION)
                    .columns(MEDICINE_PRESCRIPTION.PRESCRIPTION, MEDICINE_PRESCRIPTION.MEDICINE, MEDICINE_PRESCRIPTION.QUANTITY)
                    .values(prescription.id(), medicine, quantity)
                    .returning(MEDICINE_PRESCRIPTION.asterisk())
                    .fetchOne()
                    .map((r) -> new MedicinePrescription(
                            prescription.id(),
                            prescription.place(),
                            prescription.date(),
                            prescription.concerns(),
                            insert.get(MEDICINE.ID),
                            insert.get(MEDICINE.NAME),
                            insert.get(MEDICINE.INFO),
                            r.get(MEDICINE_PRESCRIPTION.QUANTITY)
                    ));
        });
    }

    @Override
    public Optional<MedicinePrescription> remove(long prescription) {
        return context.transactionResult(
                (config) -> DSL.using(config)
                        .select()
                        .from(MEDICINE_PRESCRIPTION)
                        .innerJoin(MEDICINE).on(MEDICINE_PRESCRIPTION.MEDICINE.eq(MEDICINE.ID))
                        .where(MEDICINE_PRESCRIPTION.PRESCRIPTION.eq(prescription))
                        .fetchOptional()
                        .flatMap(
                                (delete) -> DSL.using(config)
                                        .deleteFrom(PRESCRIPTION)
                                        .where(PRESCRIPTION.ID.eq(delete.get(MEDICINE_PRESCRIPTION.PRESCRIPTION)))
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
                                                        delete.get(MEDICINE_PRESCRIPTION.QUANTITY)
                                                )
                                        )
                        )
        );
    }

    @Override
    public Stream<MedicinePrescription> concerns(long patient, String filter) {
        return context
                .select(PRESCRIPTION.asterisk(), MEDICINE.asterisk(), MEDICINE_PRESCRIPTION.QUANTITY)
                .from(PRESCRIPTION)
                .innerJoin(MEDICINE_PRESCRIPTION).on(PRESCRIPTION.ID.eq(MEDICINE_PRESCRIPTION.PRESCRIPTION))
                .innerJoin(MEDICINE).on(MEDICINE_PRESCRIPTION.MEDICINE.eq(MEDICINE.ID))
                .innerJoin(FOLLOWS).on(PRESCRIPTION.CONCERNS.eq(FOLLOWS.ID))
                .where(FOLLOWS.PATIENT.eq(patient))
                .and(MEDICINE.NAME.containsIgnoreCase(filter).or(MEDICINE.INFO.containsIgnoreCase(filter)))
                .orderBy(PRESCRIPTION.DATE.desc())
                .fetchStreamInto(MedicinePrescription.class);
    }

    @Override
    public Stream<MedicinePrescription> tookIn(long province) throws DAOException {
        return context
                .select(PRESCRIPTION.asterisk(), MEDICINE.asterisk(), MEDICINE_PRESCRIPTION.QUANTITY)
                .from(PRESCRIPTION)
                .innerJoin(MEDICINE_PRESCRIPTION).on(PRESCRIPTION.ID.eq(MEDICINE_PRESCRIPTION.PRESCRIPTION))
                .innerJoin(MEDICINE).on(MEDICINE_PRESCRIPTION.MEDICINE.eq(MEDICINE.ID))
                .innerJoin(FOLLOWS).on(PRESCRIPTION.CONCERNS.eq(FOLLOWS.ID))
                .where(PRESCRIPTION.PLACE.eq(province))
                .orderBy(PRESCRIPTION.DATE.desc())
                .fetchStreamInto(MedicinePrescription.class);
    }

    @Override
    public long count() {
        return context
                .fetchCount(MEDICINE_PRESCRIPTION);
    }

    @Override
    public Optional<MedicinePrescription> byKey(Long key) {
        return context
                .select(PRESCRIPTION.asterisk(), MEDICINE.asterisk(), MEDICINE_PRESCRIPTION.QUANTITY)
                .from(PRESCRIPTION)
                .innerJoin(MEDICINE_PRESCRIPTION).on(PRESCRIPTION.ID.eq(MEDICINE_PRESCRIPTION.PRESCRIPTION))
                .innerJoin(MEDICINE).on(MEDICINE_PRESCRIPTION.MEDICINE.eq(MEDICINE.ID))
                .where(PRESCRIPTION.ID.eq(key))
                .fetchOptionalInto(MedicinePrescription.class);
    }

    @Override
    public Map<Long, MedicinePrescription> byKeys(Long... keys) throws DAOException {
        return context
                .select(PRESCRIPTION.asterisk(), MEDICINE.asterisk(), MEDICINE_PRESCRIPTION.QUANTITY)
                .from(PRESCRIPTION)
                .innerJoin(MEDICINE_PRESCRIPTION).on(PRESCRIPTION.ID.eq(MEDICINE_PRESCRIPTION.PRESCRIPTION))
                .innerJoin(MEDICINE).on(MEDICINE_PRESCRIPTION.MEDICINE.eq(MEDICINE.ID))
                .where(PRESCRIPTION.ID.in(keys))
                .fetchMap(PRESCRIPTION.ID, MedicinePrescription.class);
    }

    @Override
    public Stream<MedicinePrescription> fetchAll() {
        return context
                .select(PRESCRIPTION.asterisk(), MEDICINE.asterisk(), MEDICINE_PRESCRIPTION.QUANTITY)
                .from(PRESCRIPTION)
                .innerJoin(MEDICINE_PRESCRIPTION).on(PRESCRIPTION.ID.eq(MEDICINE_PRESCRIPTION.PRESCRIPTION))
                .innerJoin(MEDICINE).on(MEDICINE_PRESCRIPTION.MEDICINE.eq(MEDICINE.ID))
                .orderBy(PRESCRIPTION.DATE.desc())
                .fetchStreamInto(MedicinePrescription.class);
    }
}
