package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.GeneralDAO;
import dunder.mifflin.persistance.jdbc.generics.JDBC;
import dunder.mifflin.persistance.pojos.General;
import org.jooq.DSLContext;

import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistance.jdbc.jooq.Tables.*;

public class GeneralJDBC extends JDBC implements GeneralDAO {

    public GeneralJDBC(DSLContext context) {
        super(context);
    }

    @Override
    public Optional<General> by(long patient) {
        return context
                .select(PERSON.asterisk().except(PERSON.PASSWORD), GENERAL.WORKPLACE)
                .from(FOLLOWS)
                .innerJoin(PERSON).on(FOLLOWS.GENERAL.eq(PERSON.ID))
                .innerJoin(GENERAL).on(FOLLOWS.GENERAL.eq(GENERAL.ID))
                .where(FOLLOWS.PATIENT.eq(patient))
                .fetchOptionalInto(General.class);
    }

    @Override
    public long count() {
        return context
                .fetchCount(GENERAL);
    }

    @Override
    public Optional<General> byKey(Long key) {
        return context
                .select(PERSON.asterisk().except(PERSON.PASSWORD), GENERAL.WORKPLACE)
                .from(PERSON)
                .naturalJoin(GENERAL)
                .where(GENERAL.ID.eq(key))
                .fetchOptionalInto(General.class);
    }

    @Override
    public Stream<General> fetchAll() {
        return context
                .select(PERSON.asterisk().except(PERSON.PASSWORD), GENERAL.WORKPLACE)
                .from(PERSON)
                .naturalJoin(GENERAL)
                .fetchStreamInto(General.class);
    }
}
