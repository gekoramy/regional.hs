/*
 * This file is generated by jOOQ.
 */
package dunder.mifflin.persistance.jdbc.jooq.tables;


import dunder.mifflin.persistance.jdbc.jooq.Indexes;
import dunder.mifflin.persistance.jdbc.jooq.Keys;
import dunder.mifflin.persistance.jdbc.jooq.Public;

import java.util.Arrays;
import java.util.List;

import javax.annotation.processing.Generated;

import org.jooq.Field;
import org.jooq.ForeignKey;
import org.jooq.Identity;
import org.jooq.Index;
import org.jooq.Name;
import org.jooq.Record;
import org.jooq.Schema;
import org.jooq.Table;
import org.jooq.TableField;
import org.jooq.UniqueKey;
import org.jooq.impl.DSL;
import org.jooq.impl.TableImpl;


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
public class Province extends TableImpl<Record> {

    private static final long serialVersionUID = 1531161805;

    /**
     * The reference instance of <code>public.province</code>
     */
    public static final Province PROVINCE = new Province();

    /**
     * The class holding records for this type
     */
    @Override
    public Class<Record> getRecordType() {
        return Record.class;
    }

    /**
     * The column <code>public.province.id</code>.
     */
    public final TableField<Record, Long> ID = createField(DSL.name("id"), org.jooq.impl.SQLDataType.BIGINT.nullable(false).defaultValue(org.jooq.impl.DSL.field("nextval('province_id_seq'::regclass)", org.jooq.impl.SQLDataType.BIGINT)), this, "");

    /**
     * The column <code>public.province.region</code>.
     */
    public final TableField<Record, Long> REGION = createField(DSL.name("region"), org.jooq.impl.SQLDataType.BIGINT.nullable(false), this, "");

    /**
     * The column <code>public.province.name</code>.
     */
    public final TableField<Record, String> NAME = createField(DSL.name("name"), org.jooq.impl.SQLDataType.CLOB.nullable(false), this, "");

    /**
     * The column <code>public.province.abbreviation</code>.
     */
    public final TableField<Record, String> ABBREVIATION = createField(DSL.name("abbreviation"), org.jooq.impl.SQLDataType.CLOB.nullable(false), this, "");

    /**
     * Create a <code>public.province</code> table reference
     */
    public Province() {
        this(DSL.name("province"), null);
    }

    /**
     * Create an aliased <code>public.province</code> table reference
     */
    public Province(String alias) {
        this(DSL.name(alias), PROVINCE);
    }

    /**
     * Create an aliased <code>public.province</code> table reference
     */
    public Province(Name alias) {
        this(alias, PROVINCE);
    }

    private Province(Name alias, Table<Record> aliased) {
        this(alias, aliased, null);
    }

    private Province(Name alias, Table<Record> aliased, Field<?>[] parameters) {
        super(alias, null, aliased, parameters, DSL.comment(""));
    }

    public <O extends Record> Province(Table<O> child, ForeignKey<O, Record> key) {
        super(child, key, PROVINCE);
    }

    @Override
    public Schema getSchema() {
        return Public.PUBLIC;
    }

    @Override
    public List<Index> getIndexes() {
        return Arrays.<Index>asList(Indexes.PROVINCE_PKEY);
    }

    @Override
    public Identity<Record, Long> getIdentity() {
        return Keys.IDENTITY_PROVINCE;
    }

    @Override
    public UniqueKey<Record> getPrimaryKey() {
        return Keys.PROVINCE_PKEY;
    }

    @Override
    public List<UniqueKey<Record>> getKeys() {
        return Arrays.<UniqueKey<Record>>asList(Keys.PROVINCE_PKEY);
    }

    @Override
    public List<ForeignKey<Record, ?>> getReferences() {
        return Arrays.<ForeignKey<Record, ?>>asList(Keys.PROVINCE__PROVINCE_REGION_FKEY);
    }

    public Region region() {
        return new Region(this, Keys.PROVINCE__PROVINCE_REGION_FKEY);
    }

    @Override
    public Province as(String alias) {
        return new Province(DSL.name(alias), this);
    }

    @Override
    public Province as(Name alias) {
        return new Province(alias, this);
    }

    /**
     * Rename this table
     */
    @Override
    public Province rename(String name) {
        return new Province(DSL.name(name), null);
    }

    /**
     * Rename this table
     */
    @Override
    public Province rename(Name name) {
        return new Province(name, null);
    }
}
