/*
 * This file is generated by jOOQ.
 */
package dunder.mifflin.persistence.jdbc.jooq.tables;


import dunder.mifflin.persistence.jdbc.jooq.Indexes;
import dunder.mifflin.persistence.jdbc.jooq.Keys;
import dunder.mifflin.persistence.jdbc.jooq.Public;
import org.jooq.*;
import org.jooq.impl.DSL;
import org.jooq.impl.TableImpl;

import javax.annotation.processing.Generated;
import java.util.Arrays;
import java.util.List;


/**
 * This class is generated by jOOQ.
 */
@Generated(
    value = {
        "http://www.jooq.org",
        "jOOQ version:3.12.1"
    },
    comments = "This class is generated by jOOQ"
)
@SuppressWarnings({ "all", "unchecked", "rawtypes" })
public class Avatar extends TableImpl<Record> {

    private static final long serialVersionUID = 1145807802;

    /**
     * The reference instance of <code>public.avatar</code>
     */
    public static final Avatar AVATAR = new Avatar();

    /**
     * The class holding records for this type
     */
    @Override
    public Class<Record> getRecordType() {
        return Record.class;
    }

    /**
     * The column <code>public.avatar.id</code>.
     */
    public final TableField<Record, Long> ID = createField(DSL.name("id"), org.jooq.impl.SQLDataType.BIGINT.nullable(false), this, "");

    /**
     * The column <code>public.avatar.url</code>.
     */
    public final TableField<Record, String> URL = createField(DSL.name("url"), org.jooq.impl.SQLDataType.CLOB.nullable(false), this, "");

    /**
     * Create a <code>public.avatar</code> table reference
     */
    public Avatar() {
        this(DSL.name("avatar"), null);
    }

    /**
     * Create an aliased <code>public.avatar</code> table reference
     */
    public Avatar(String alias) {
        this(DSL.name(alias), AVATAR);
    }

    /**
     * Create an aliased <code>public.avatar</code> table reference
     */
    public Avatar(Name alias) {
        this(alias, AVATAR);
    }

    private Avatar(Name alias, Table<Record> aliased) {
        this(alias, aliased, null);
    }

    private Avatar(Name alias, Table<Record> aliased, Field<?>[] parameters) {
        super(alias, null, aliased, parameters, DSL.comment(""));
    }

    public <O extends Record> Avatar(Table<O> child, ForeignKey<O, Record> key) {
        super(child, key, AVATAR);
    }

    @Override
    public Schema getSchema() {
        return Public.PUBLIC;
    }

    @Override
    public List<Index> getIndexes() {
        return Arrays.<Index>asList(Indexes.AVATAR_PKEY, Indexes.AVATAR_URL_KEY);
    }

    @Override
    public UniqueKey<Record> getPrimaryKey() {
        return Keys.AVATAR_PKEY;
    }

    @Override
    public List<UniqueKey<Record>> getKeys() {
        return Arrays.<UniqueKey<Record>>asList(Keys.AVATAR_PKEY, Keys.AVATAR_URL_KEY);
    }

    @Override
    public List<ForeignKey<Record, ?>> getReferences() {
        return Arrays.<ForeignKey<Record, ?>>asList(Keys.AVATAR__AVATAR_ID_FKEY);
    }

    public Person person() {
        return new Person(this, Keys.AVATAR__AVATAR_ID_FKEY);
    }

    @Override
    public Avatar as(String alias) {
        return new Avatar(DSL.name(alias), this);
    }

    @Override
    public Avatar as(Name alias) {
        return new Avatar(alias, this);
    }

    /**
     * Rename this table
     */
    @Override
    public Avatar rename(String name) {
        return new Avatar(DSL.name(name), null);
    }

    /**
     * Rename this table
     */
    @Override
    public Avatar rename(Name name) {
        return new Avatar(name, null);
    }
}
