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
public class Region extends TableImpl<Record> {

    private static final long serialVersionUID = 2045564559;

    /**
     * The reference instance of <code>public.region</code>
     */
    public static final Region REGION = new Region();

    /**
     * The class holding records for this type
     */
    @Override
    public Class<Record> getRecordType() {
        return Record.class;
    }

    /**
     * The column <code>public.region.id</code>.
     */
    public final TableField<Record, Long> ID = createField(DSL.name("id"), org.jooq.impl.SQLDataType.BIGINT.nullable(false).defaultValue(org.jooq.impl.DSL.field("nextval('region_id_seq'::regclass)", org.jooq.impl.SQLDataType.BIGINT)), this, "");

    /**
     * The column <code>public.region.name</code>.
     */
    public final TableField<Record, String> NAME = createField(DSL.name("name"), org.jooq.impl.SQLDataType.CLOB.nullable(false), this, "");

    /**
     * Create a <code>public.region</code> table reference
     */
    public Region() {
        this(DSL.name("region"), null);
    }

    /**
     * Create an aliased <code>public.region</code> table reference
     */
    public Region(String alias) {
        this(DSL.name(alias), REGION);
    }

    /**
     * Create an aliased <code>public.region</code> table reference
     */
    public Region(Name alias) {
        this(alias, REGION);
    }

    private Region(Name alias, Table<Record> aliased) {
        this(alias, aliased, null);
    }

    private Region(Name alias, Table<Record> aliased, Field<?>[] parameters) {
        super(alias, null, aliased, parameters, DSL.comment(""));
    }

    public <O extends Record> Region(Table<O> child, ForeignKey<O, Record> key) {
        super(child, key, REGION);
    }

    @Override
    public Schema getSchema() {
        return Public.PUBLIC;
    }

    @Override
    public List<Index> getIndexes() {
        return Arrays.<Index>asList(Indexes.REGION_PKEY);
    }

    @Override
    public Identity<Record, Long> getIdentity() {
        return Keys.IDENTITY_REGION;
    }

    @Override
    public UniqueKey<Record> getPrimaryKey() {
        return Keys.REGION_PKEY;
    }

    @Override
    public List<UniqueKey<Record>> getKeys() {
        return Arrays.<UniqueKey<Record>>asList(Keys.REGION_PKEY);
    }

    @Override
    public Region as(String alias) {
        return new Region(DSL.name(alias), this);
    }

    @Override
    public Region as(Name alias) {
        return new Region(alias, this);
    }

    /**
     * Rename this table
     */
    @Override
    public Region rename(String name) {
        return new Region(DSL.name(name), null);
    }

    /**
     * Rename this table
     */
    @Override
    public Region rename(Name name) {
        return new Region(name, null);
    }
}
