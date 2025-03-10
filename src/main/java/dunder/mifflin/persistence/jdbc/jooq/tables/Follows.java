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
import java.time.OffsetDateTime;
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
public class Follows extends TableImpl<Record> {

    private static final long serialVersionUID = -672616331;

    /**
     * The reference instance of <code>public.follows</code>
     */
    public static final Follows FOLLOWS = new Follows();

    /**
     * The class holding records for this type
     */
    @Override
    public Class<Record> getRecordType() {
        return Record.class;
    }

    /**
     * The column <code>public.follows.id</code>.
     */
    public final TableField<Record, Long> ID = createField(DSL.name("id"), org.jooq.impl.SQLDataType.BIGINT.nullable(false).defaultValue(org.jooq.impl.DSL.field("nextval('follows_id_seq'::regclass)", org.jooq.impl.SQLDataType.BIGINT)), this, "");

    /**
     * The column <code>public.follows.patient</code>.
     */
    public final TableField<Record, Long> PATIENT = createField(DSL.name("patient"), org.jooq.impl.SQLDataType.BIGINT.nullable(false), this, "");

    /**
     * The column <code>public.follows.general</code>.
     */
    public final TableField<Record, Long> GENERAL = createField(DSL.name("general"), org.jooq.impl.SQLDataType.BIGINT.nullable(false), this, "");

    /**
     * The column <code>public.follows.since</code>.
     */
    public final TableField<Record, OffsetDateTime> SINCE = createField(DSL.name("since"), org.jooq.impl.SQLDataType.TIMESTAMPWITHTIMEZONE.nullable(false).defaultValue(org.jooq.impl.DSL.field("CURRENT_TIMESTAMP", org.jooq.impl.SQLDataType.TIMESTAMPWITHTIMEZONE)), this, "");

    /**
     * Create a <code>public.follows</code> table reference
     */
    public Follows() {
        this(DSL.name("follows"), null);
    }

    /**
     * Create an aliased <code>public.follows</code> table reference
     */
    public Follows(String alias) {
        this(DSL.name(alias), FOLLOWS);
    }

    /**
     * Create an aliased <code>public.follows</code> table reference
     */
    public Follows(Name alias) {
        this(alias, FOLLOWS);
    }

    private Follows(Name alias, Table<Record> aliased) {
        this(alias, aliased, null);
    }

    private Follows(Name alias, Table<Record> aliased, Field<?>[] parameters) {
        super(alias, null, aliased, parameters, DSL.comment(""));
    }

    public <O extends Record> Follows(Table<O> child, ForeignKey<O, Record> key) {
        super(child, key, FOLLOWS);
    }

    @Override
    public Schema getSchema() {
        return Public.PUBLIC;
    }

    @Override
    public List<Index> getIndexes() {
        return Arrays.<Index>asList(Indexes.FOLLOWS_PKEY, Indexes.FOLLOWS_SINCE_INDEX);
    }

    @Override
    public Identity<Record, Long> getIdentity() {
        return Keys.IDENTITY_FOLLOWS;
    }

    @Override
    public UniqueKey<Record> getPrimaryKey() {
        return Keys.FOLLOWS_PKEY;
    }

    @Override
    public List<UniqueKey<Record>> getKeys() {
        return Arrays.<UniqueKey<Record>>asList(Keys.FOLLOWS_PKEY);
    }

    @Override
    public List<ForeignKey<Record, ?>> getReferences() {
        return Arrays.<ForeignKey<Record, ?>>asList(Keys.FOLLOWS__FOLLOWS_PATIENT_FKEY, Keys.FOLLOWS__FOLLOWS_GENERAL_FKEY);
    }

    public Person person() {
        return new Person(this, Keys.FOLLOWS__FOLLOWS_PATIENT_FKEY);
    }

    public General general() {
        return new General(this, Keys.FOLLOWS__FOLLOWS_GENERAL_FKEY);
    }

    @Override
    public Follows as(String alias) {
        return new Follows(DSL.name(alias), this);
    }

    @Override
    public Follows as(Name alias) {
        return new Follows(alias, this);
    }

    /**
     * Rename this table
     */
    @Override
    public Follows rename(String name) {
        return new Follows(DSL.name(name), null);
    }

    /**
     * Rename this table
     */
    @Override
    public Follows rename(Name name) {
        return new Follows(name, null);
    }
}
