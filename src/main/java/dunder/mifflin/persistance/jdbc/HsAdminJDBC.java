package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.HsAdminDAO;
import dunder.mifflin.persistance.jdbc.generics.JDBC;
import dunder.mifflin.persistance.pojos.HsAdmin;
import org.jooq.DSLContext;

import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistance.jdbc.jooq.Tables.HS_ADMIN;
import static dunder.mifflin.persistance.jdbc.jooq.Tables.PERSON;

public class HsAdminJDBC extends JDBC implements HsAdminDAO {

    public HsAdminJDBC(DSLContext context) {
        super(context);
    }

    @Override
    public long count() {
        return context
                .fetchCount(HS_ADMIN);
    }

    @Override
    public Optional<HsAdmin> byKey(Long key) {
        return context
                .select(PERSON.asterisk().except(PERSON.PASSWORD), HS_ADMIN.WORKPLACE)
                .from(PERSON)
                .naturalJoin(HS_ADMIN)
                .where(HS_ADMIN.ID.eq(key))
                .fetchOptionalInto(HsAdmin.class);
    }

    @Override
    public Stream<HsAdmin> fetchAll() {
        return context
                .select(PERSON.asterisk().except(PERSON.PASSWORD), HS_ADMIN.WORKPLACE)
                .from(PERSON)
                .naturalJoin(HS_ADMIN)
                .fetchStreamInto(HsAdmin.class);
    }
}
