package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.SecretDao;
import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.jdbc.generics.JDBC;
import dunder.mifflin.persistance.pojos.Secret;
import org.jooq.DSLContext;

import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistance.jdbc.jooq.Tables.PERSON;

public class SecretJDBC extends JDBC implements SecretDao {

    public SecretJDBC(DSLContext context) {
        super(context);
    }

    @Override
    public Optional<Secret> by(String email) throws DAOException {
        return context
                .select(PERSON.ID, PERSON.PASSWORD)
                .from(PERSON)
                .where(PERSON.EMAIL.eq(email))
                .fetchOptionalInto(Secret.class);
    }

    @Override
    public Optional<Secret> store(long person, String password) throws DAOException {
        return context
                .update(PERSON)
                .set(PERSON.PASSWORD, password)
                .where(PERSON.ID.eq(person))
                .returning(PERSON.ID, PERSON.PASSWORD)
                .fetchOptional()
                .map((r) -> new Secret(
                        r.get(PERSON.ID),
                        r.get(PERSON.PASSWORD)
                ));
    }

    @Override
    public long count() throws DAOException {
        return context
                .fetchCount(PERSON);
    }

    @Override
    public Optional<Secret> byKey(Long key) throws DAOException {
        return context
                .select(PERSON.ID, PERSON.PASSWORD)
                .from(PERSON)
                .where(PERSON.ID.eq(key))
                .fetchOptionalInto(Secret.class);
    }

    @Override
    public Stream<Secret> fetchAll() throws DAOException {
        return context
                .select(PERSON.ID, PERSON.PASSWORD)
                .from(PERSON)
                .fetchStreamInto(Secret.class);
    }
}
