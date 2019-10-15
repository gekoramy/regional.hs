package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.TicketDAO;
import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.jdbc.generics.JDBC;
import dunder.mifflin.persistance.pojos.Ticket;
import org.jooq.DSLContext;

import java.math.BigDecimal;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistance.jdbc.jooq.Tables.*;

public class TicketJDBC extends JDBC implements TicketDAO {

    public TicketJDBC(DSLContext context) {
        super(context);
    }

    @Override
    public Ticket insert(long prescription, BigDecimal amount) {
        return context
                .insertInto(TICKET)
                .columns(TICKET.PRESCRIPTION, TICKET.AMOUNT)
                .values(prescription, amount)
                .returning(TICKET.asterisk())
                .fetchOptional()
                .map((r) -> new Ticket(
                        r.get(TICKET.PRESCRIPTION),
                        r.get(TICKET.DATE),
                        r.get(TICKET.AMOUNT)
                ))
                .get();
    }

    @Override
    public Optional<Ticket> remove(long prescription) {
        return context
                .deleteFrom(TICKET)
                .where(TICKET.PRESCRIPTION.eq(prescription))
                .returning(TICKET.asterisk())
                .fetchOptional()
                .map((r) -> new Ticket(
                        r.get(TICKET.PRESCRIPTION),
                        r.get(TICKET.DATE),
                        r.get(TICKET.AMOUNT)
                ));
    }

    @Override
    public Stream<Ticket> concerns(long patient) {
        return context
                .select(TICKET.asterisk())
                .from(PRESCRIPTION)
                .innerJoin(TICKET).on(PRESCRIPTION.ID.eq(TICKET.PRESCRIPTION))
                .innerJoin(FOLLOWS).on(PRESCRIPTION.CONCERNS.eq(FOLLOWS.ID))
                .where(FOLLOWS.PATIENT.eq(patient))
                .orderBy(TICKET.DATE.desc())
                .fetchStreamInto(Ticket.class);
    }

    @Override
    public long count() {
        return context
                .fetchCount(TICKET);
    }

    @Override
    public Optional<Ticket> byKey(Long key) {
        return context
                .select()
                .from(TICKET)
                .where(TICKET.PRESCRIPTION.eq(key))
                .fetchOptionalInto(Ticket.class);
    }

    @Override
    public Map<Long, Ticket> byKeys(Long... keys) throws DAOException {
        return context
                .select()
                .from(TICKET)
                .where(TICKET.PRESCRIPTION.in(keys))
                .fetchMap(TICKET.PRESCRIPTION, Ticket.class);
    }

    @Override
    public Stream<Ticket> fetchAll() {
        return context
                .select()
                .from(TICKET)
                .orderBy(TICKET.DATE.desc())
                .fetchStreamInto(Ticket.class);
    }
}
