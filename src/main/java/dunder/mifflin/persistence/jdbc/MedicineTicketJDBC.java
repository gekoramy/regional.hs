package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.MedicineTicketDAO;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.jdbc.generics.JDBC;
import dunder.mifflin.persistence.pojos.MedicineTicket;
import org.jooq.DSLContext;

import java.math.BigDecimal;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistence.jdbc.jooq.Tables.*;

public class MedicineTicketJDBC extends JDBC implements MedicineTicketDAO {

    public MedicineTicketJDBC(DSLContext context) {
        super(context);
    }

    @Override
    public MedicineTicket insert(long prescription, BigDecimal amount) throws DAOException {
        return context
                .insertInto(MEDICINE_TICKET)
                .columns(MEDICINE_TICKET.PRESCRIPTION, MEDICINE_TICKET.AMOUNT)
                .values(prescription, amount)
                .returning(MEDICINE_TICKET.asterisk())
                .fetchOne()
                .map((r) -> new MedicineTicket(
                        r.get(MEDICINE_TICKET.PRESCRIPTION),
                        r.get(MEDICINE_TICKET.DATE),
                        r.get(MEDICINE_TICKET.AMOUNT)
                ));
    }

    @Override
    public Optional<MedicineTicket> remove(long prescription) throws DAOException {
        return context
                .deleteFrom(MEDICINE_TICKET)
                .where(MEDICINE_TICKET.PRESCRIPTION.eq(prescription))
                .returning(MEDICINE_TICKET.asterisk())
                .fetchOptional()
                .map((r) -> new MedicineTicket(
                        r.get(MEDICINE_TICKET.PRESCRIPTION),
                        r.get(MEDICINE_TICKET.DATE),
                        r.get(MEDICINE_TICKET.AMOUNT)
                ));
    }

    @Override
    public Stream<MedicineTicket> concerns(long patient) throws DAOException {
        return context
                .select(MEDICINE_TICKET.asterisk())
                .from(MEDICINE_TICKET)
                .innerJoin(PRESCRIPTION).on(MEDICINE_TICKET.PRESCRIPTION.eq(PRESCRIPTION.ID))
                .innerJoin(FOLLOWS).on(PRESCRIPTION.CONCERNS.eq(FOLLOWS.ID))
                .where(FOLLOWS.PATIENT.eq(patient))
                .orderBy(MEDICINE_TICKET.DATE.desc())
                .fetchInto(MedicineTicket.class)
                .stream();
    }

    @Override
    public long count() throws DAOException {
        return context.fetchCount(MEDICINE_TICKET);
    }

    @Override
    public Optional<MedicineTicket> byKey(Long key) throws DAOException {
        return context
                .select(MEDICINE_TICKET.asterisk())
                .from(MEDICINE_TICKET)
                .where(MEDICINE_TICKET.PRESCRIPTION.eq(key))
                .fetchOptionalInto(MedicineTicket.class);
    }

    @Override
    public Map<Long, MedicineTicket> byKeys(Long... keys) throws DAOException {
        return context
                .select(MEDICINE_TICKET.asterisk())
                .from(MEDICINE_TICKET)
                .where(MEDICINE_TICKET.PRESCRIPTION.in(keys))
                .fetchMap(MEDICINE_TICKET.PRESCRIPTION, MedicineTicket.class);
    }

    @Override
    public Stream<MedicineTicket> fetchAll() throws DAOException {
        return context
                .select(MEDICINE_TICKET.asterisk())
                .from(MEDICINE_TICKET)
                .fetchInto(MedicineTicket.class)
                .stream();
    }
}
