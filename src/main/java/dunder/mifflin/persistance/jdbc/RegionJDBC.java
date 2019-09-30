package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.RegionDAO;
import dunder.mifflin.persistance.jdbc.generics.JDBC;
import dunder.mifflin.persistance.pojos.Region;
import org.jooq.DSLContext;

import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistance.jdbc.jooq.Tables.REGION;

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
    public Stream<Region> fetchAll() {
        return context
                .select()
                .from(REGION)
                .fetchStreamInto(Region.class);
    }
}
