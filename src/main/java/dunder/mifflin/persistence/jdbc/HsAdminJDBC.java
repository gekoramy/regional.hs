package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.HsAdminDAO;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.jdbc.generics.JDBC;
import dunder.mifflin.persistence.pojos.HsAdmin;
import org.jooq.DSLContext;

import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistence.jdbc.jooq.Tables.HS_ADMIN;
import static dunder.mifflin.persistence.jdbc.jooq.Tables.PERSON;

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
    public Map<Long, HsAdmin> byKeys(Long... keys) throws DAOException {
        return context
                .select(PERSON.asterisk().except(PERSON.PASSWORD), HS_ADMIN.WORKPLACE)
                .from(PERSON)
                .naturalJoin(HS_ADMIN)
                .where(HS_ADMIN.ID.in(keys))
                .fetchMap(HS_ADMIN.ID, HsAdmin.class);
    }

    @Override
    public Stream<HsAdmin> fetchAll() {
        return context
                .select(PERSON.asterisk().except(PERSON.PASSWORD), HS_ADMIN.WORKPLACE)
                .from(PERSON)
                .naturalJoin(HS_ADMIN)
                .orderBy(PERSON.NAME)
                .fetchInto(HsAdmin.class)
                .stream();
    }
}
