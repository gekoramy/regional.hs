package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.RegionDAO;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.jdbc.generics.JDBC;
import dunder.mifflin.persistence.pojos.Region;
import org.jooq.DSLContext;

import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistence.jdbc.jooq.Tables.REGION;

public class RegionJDBC extends JDBC implements RegionDAO {

    public RegionJDBC(DSLContext context) {
        super(context);
    }

    @Override
    public long count() {
        return context
                .fetchCount(REGION);
    }

    @Override
    public Optional<Region> byKey(Long key) {
        return context
                .select()
                .from(REGION)
                .where(REGION.ID.eq(key))
                .fetchOptionalInto(Region.class);
    }

    @Override
    public Map<Long, Region> byKeys(Long... keys) throws DAOException {
        return context
                .select()
                .from(REGION)
                .where(REGION.ID.in(keys))
                .fetchMap(REGION.ID, Region.class);
    }

    @Override
    public Stream<Region> fetchAll() {
        return context
                .select()
                .from(REGION)
                .fetchInto(Region.class)
                .stream();
    }
}
