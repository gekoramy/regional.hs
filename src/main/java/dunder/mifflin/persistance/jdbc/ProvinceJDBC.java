package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.ProvinceDAO;
import dunder.mifflin.persistance.jdbc.generics.JDBC;
import dunder.mifflin.persistance.pojos.Province;
import org.jooq.DSLContext;

import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistance.jdbc.jooq.Tables.*;

public class ProvinceJDBC extends JDBC implements ProvinceDAO {

    public ProvinceJDBC(DSLContext context) {
        super(context);
    }

    @Override
    public long count() {
        return context
                .fetchCount(PROVINCE);
    }

    @Override
    public Optional<Province> byKey(Long key) {
        return context
                .select()
                .from(PROVINCE)
                .where(PROVINCE.ID.eq(key))
                .fetchOptionalInto(Province.class);
    }

    @Override
    public Stream<Province> fetchAll() {
        return context
                .select()
                .from(PROVINCE)
                .fetchStreamInto(Province.class);
    }
}
