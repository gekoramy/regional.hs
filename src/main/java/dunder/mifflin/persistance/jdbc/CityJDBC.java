package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.CityDAO;
import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.jdbc.generics.JDBC;
import dunder.mifflin.persistance.pojos.City;
import org.jooq.DSLContext;

import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistance.jdbc.jooq.Tables.CITY;

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
