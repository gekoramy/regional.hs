package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.AvatarDAO;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.jdbc.generics.JDBC;
import dunder.mifflin.persistence.pojos.Avatar;
import org.jooq.DSLContext;

import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

import static dunder.mifflin.persistence.jdbc.jooq.Tables.AVATAR;

public class AvatarJDBC extends JDBC implements AvatarDAO {

    public AvatarJDBC(DSLContext context) {
        super(context);
    }

    @Override
    public Avatar store(long person, String url) {
        return context
                .insertInto(AVATAR)
                .columns(AVATAR.ID, AVATAR.URL)
                .values(person, url)
                .onDuplicateKeyUpdate()
                .set(AVATAR.URL, url)
                .returning(AVATAR.asterisk())
                .fetchOptional()
                .map((r) -> new Avatar(r.get(AVATAR.ID), r.get(AVATAR.URL)))
                .get();
    }

    @Override
    public Optional<Avatar> remove(long person) {
        return context
                .deleteFrom(AVATAR)
                .where(AVATAR.ID.eq(person))
                .returning(AVATAR.asterisk())
                .fetchOptional()
                .map((r) -> new Avatar(r.get(AVATAR.ID), r.get(AVATAR.URL)));
    }

    @Override
    public long count() {
        return context
                .fetchCount(AVATAR);
    }

    @Override
    public Optional<Avatar> byKey(Long key) {
        return context
                .select()
                .from(AVATAR)
                .where(AVATAR.ID.eq(key))
                .fetchOptionalInto(Avatar.class);
    }

    @Override
    public Map<Long, Avatar> byKeys(Long... keys) throws DAOException {
        return context
                .select()
                .from(AVATAR)
                .where(AVATAR.ID.in(keys))
                .fetchMap(AVATAR.ID, Avatar.class);
    }

    @Override
    public Stream<Avatar> fetchAll() {
        return context
                .select()
                .from(AVATAR)
                .fetchInto(Avatar.class)
                .stream();
    }
}
