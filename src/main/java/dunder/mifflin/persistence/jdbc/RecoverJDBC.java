package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.RecoverDAO;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.jdbc.generics.JDBC;
import dunder.mifflin.persistence.pojos.Recover;
import org.jooq.DSLContext;
import org.jooq.impl.DSL;

import java.util.Map;
import java.util.Optional;
import java.util.UUID;
import java.util.stream.Stream;

import static dunder.mifflin.persistence.jdbc.jooq.Tables.RECOVER;

public class RecoverJDBC extends JDBC implements RecoverDAO {

    public RecoverJDBC(DSLContext context) {
        super(context);
    }

    @Override
    public Recover store(long person) throws DAOException {
        return context.transactionResult((config) -> {
            DSL.using(config)
                    .deleteFrom(RECOVER)
                    .where(RECOVER.PERSON.eq(person))
                    .execute();

            return DSL.using(config)
                    .insertInto(RECOVER)
                    .columns(RECOVER.PERSON)
                    .values(person)
                    .returning(RECOVER.asterisk())
                    .fetchOptional()
                    .map((r) -> new Recover(
                            r.get(RECOVER.PERSON),
                            r.get(RECOVER.TOKEN),
                            r.get(RECOVER.EXPIRATION)
                    ))
                    .get();
        });
    }

    @Override
    public Optional<Recover> remove(long person) throws DAOException {
        return context
                .deleteFrom(RECOVER)
                .where(RECOVER.PERSON.eq(person))
                .returning(RECOVER.asterisk())
                .fetchOptional()
                .map((r) -> new Recover(
                        r.get(RECOVER.PERSON),
                        r.get(RECOVER.TOKEN),
                        r.get(RECOVER.EXPIRATION)
                ));
    }

    @Override
    public Optional<Recover> by(UUID token) throws DAOException {
        return context
                .select()
                .from(RECOVER)
                .where(RECOVER.TOKEN.eq(token))
                .fetchOptionalInto(Recover.class);
    }

    @Override
    public long count() throws DAOException {
        return context
                .fetchCount(RECOVER);
    }

    @Override
    public Optional<Recover> byKey(Long key) throws DAOException {
        return context
                .select()
                .from(RECOVER)
                .where(RECOVER.PERSON.eq(key))
                .fetchOptionalInto(Recover.class);
    }

    @Override
    public Map<Long, Recover> byKeys(Long... keys) throws DAOException {
        return context
                .select()
                .from(RECOVER)
                .where(RECOVER.PERSON.in(keys))
                .fetchMap(RECOVER.PERSON, Recover.class);
    }

    @Override
    public Stream<Recover> fetchAll() throws DAOException {
        return context
                .select()
                .from(RECOVER)
                .fetchStreamInto(Recover.class);
    }
}
