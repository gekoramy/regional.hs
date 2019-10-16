package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.ProvinceDAO;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.jdbc.generics.JDBC;
import dunder.mifflin.persistence.pojos.Province;
import org.jooq.DSLContext;

import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistence.jdbc.jooq.Tables.PROVINCE;

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
    public Map<Long, Province> byKeys(Long... keys) throws DAOException {
        return context
                .select()
                .from(PROVINCE)
                .where(PROVINCE.ID.in(keys))
                .fetchMap(PROVINCE.ID, Province.class);
    }

    @Override
    public Stream<Province> fetchAll() {
        return context
                .select()
                .from(PROVINCE)
                .fetchStreamInto(Province.class);
    }
}
