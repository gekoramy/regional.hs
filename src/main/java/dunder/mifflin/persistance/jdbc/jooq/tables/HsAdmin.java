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
public class HsAdmin extends TableImpl<Record> {

    private static final long serialVersionUID = 1077339218;

    /**
     * The reference instance of <code>public.hs_admin</code>
     */
    public static final HsAdmin HS_ADMIN = new HsAdmin();

    /**
     * The class holding records for this type
     */
    @Override
    public Class<Record> getRecordType() {
        return Record.class;
    }

    /**
     * The column <code>public.hs_admin.id</code>.
     */
    public final TableField<Record, Long> ID = createField(DSL.name("id"), org.jooq.impl.SQLDataType.BIGINT.nullable(false), this, "");

    /**
     * The column <code>public.hs_admin.workplace</code>.
     */
    public final TableField<Record, Long> WORKPLACE = createField(DSL.name("workplace"), org.jooq.impl.SQLDataType.BIGINT.nullable(false), this, "");

    /**
     * Create a <code>public.hs_admin</code> table reference
     */
    public HsAdmin() {
        this(DSL.name("hs_admin"), null);
    }

    /**
     * Create an aliased <code>public.hs_admin</code> table reference
     */
    public HsAdmin(String alias) {
        this(DSL.name(alias), HS_ADMIN);
    }

    /**
     * Create an aliased <code>public.hs_admin</code> table reference
     */
    public HsAdmin(Name alias) {
        this(alias, HS_ADMIN);
    }

    private HsAdmin(Name alias, Table<Record> aliased) {
        this(alias, aliased, null);
    }

    private HsAdmin(Name alias, Table<Record> aliased, Field<?>[] parameters) {
        super(alias, null, aliased, parameters, DSL.comment(""));
    }

    public <O extends Record> HsAdmin(Table<O> child, ForeignKey<O, Record> key) {
        super(child, key, HS_ADMIN);
    }

    @Override
    public Schema getSchema() {
        return Public.PUBLIC;
    }

    @Override
    public List<Index> getIndexes() {
        return Arrays.<Index>asList(Indexes.HS_ADMIN_PKEY);
    }

    @Override
    public UniqueKey<Record> getPrimaryKey() {
        return Keys.HS_ADMIN_PKEY;
    }

    @Override
    public List<UniqueKey<Record>> getKeys() {
        return Arrays.<UniqueKey<Record>>asList(Keys.HS_ADMIN_PKEY);
    }

    @Override
    public List<ForeignKey<Record, ?>> getReferences() {
        return Arrays.<ForeignKey<Record, ?>>asList(Keys.HS_ADMIN__HS_ADMIN_ID_FKEY, Keys.HS_ADMIN__HS_ADMIN_WORKPLACE_FKEY);
    }

    public Person person() {
        return new Person(this, Keys.HS_ADMIN__HS_ADMIN_ID_FKEY);
    }

    public Province province() {
        return new Province(this, Keys.HS_ADMIN__HS_ADMIN_WORKPLACE_FKEY);
    }

    @Override
    public HsAdmin as(String alias) {
        return new HsAdmin(DSL.name(alias), this);
    }

    @Override
    public HsAdmin as(Name alias) {
        return new HsAdmin(alias, this);
    }

    /**
     * Rename this table
     */
    @Override
    public HsAdmin rename(String name) {
        return new HsAdmin(DSL.name(name), null);
    }

    /**
     * Rename this table
     */
    @Override
    public HsAdmin rename(Name name) {
        return new HsAdmin(name, null);
    }
}
