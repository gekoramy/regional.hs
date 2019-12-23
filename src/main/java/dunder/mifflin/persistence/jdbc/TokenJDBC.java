package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.TokenDAO;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.jdbc.generics.JDBC;
import dunder.mifflin.persistence.pojos.Recover;
import org.jooq.DSLContext;
import org.jooq.impl.DSL;

import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistence.jdbc.jooq.Tables.TOKEN;

public class TokenJDBC extends JDBC implements TokenDAO {

    public TokenJDBC(DSLContext context) {
        super(context);
    }

    @Override
    public Recover store(long person, String token) throws DAOException {
        return context.transactionResult((config) -> {
            DSL.using(config)
                    .deleteFrom(TOKEN)
                    .where(TOKEN.PERSON.eq(person))
                    .execute();

            return DSL.using(config)
                    .insertInto(TOKEN)
                    .columns(TOKEN.PERSON, TOKEN.TOKEN_)
                    .values(person, token)
                    .returning(TOKEN.asterisk())
                    .fetchOptional()
                    .map((r) -> new Recover(
                            r.get(TOKEN.PERSON),
                            r.get(TOKEN.TOKEN_),
                            r.get(TOKEN.EXPIRATION)
                    ))
                    .get();
        });
    }

    @Override
    public Optional<Recover> remove(long person) throws DAOException {
        return context
                .deleteFrom(TOKEN)
                .where(TOKEN.PERSON.eq(person))
                .returning(TOKEN.asterisk())
                .fetchOptional()
                .map((r) -> new Recover(
                        r.get(TOKEN.PERSON),
                        r.get(TOKEN.TOKEN_),
                        r.get(TOKEN.EXPIRATION)
                ));
    }

    @Override
    public long count() throws DAOException {
        return context
                .fetchCount(TOKEN);
    }

    @Override
    public Optional<Recover> byKey(Long key) throws DAOException {
        return context
                .select()
                .from(TOKEN)
                .where(TOKEN.PERSON.eq(key))
                .fetchOptionalInto(Recover.class);
    }

    @Override
    public Map<Long, Recover> byKeys(Long... keys) throws DAOException {
        return context
                .select()
                .from(TOKEN)
                .where(TOKEN.PERSON.in(keys))
                .fetchMap(TOKEN.PERSON, Recover.class);
    }

    @Override
    public Stream<Recover> fetchAll() throws DAOException {
        return context
                .select()
                .from(TOKEN)
                .fetchInto(Recover.class)
                .stream();
    }
}
