package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.CityDAO;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.jdbc.generics.JDBC;
import dunder.mifflin.persistence.pojos.City;
import org.jooq.DSLContext;

import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistence.jdbc.jooq.Tables.CITY;

public class CityJDBC extends JDBC implements CityDAO {

    public CityJDBC(DSLContext context) {
        super(context);
    }

    @Override
    public long count() {
        return context
                .fetchCount(CITY);
    }

    @Override
    public Optional<City> byKey(Long key) {
        return context
                .select()
                .from(CITY)
                .where(CITY.ID.eq(key))
                .fetchOptionalInto(City.class);
    }

    @Override
    public Map<Long, City> byKeys(Long... keys) throws DAOException {
        return context
                .select()
                .from(CITY)
                .where(CITY.ID.in(keys))
                .fetchMap(CITY.ID, City.class);
    }

    @Override
    public Stream<City> fetchAll() {
        return context
                .select()
                .from(CITY)
                .fetchStreamInto(City.class);
    }
}
