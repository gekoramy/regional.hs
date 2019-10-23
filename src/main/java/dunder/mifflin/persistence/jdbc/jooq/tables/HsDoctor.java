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
public class HsDoctor extends TableImpl<Record> {

    private static final long serialVersionUID = 482216924;

    /**
     * The reference instance of <code>public.hs_doctor</code>
     */
    public static final HsDoctor HS_DOCTOR = new HsDoctor();

    /**
     * The class holding records for this type
     */
    @Override
    public Class<Record> getRecordType() {
        return Record.class;
    }

    /**
     * The column <code>public.hs_doctor.id</code>.
     */
    public final TableField<Record, Long> ID = createField(DSL.name("id"), org.jooq.impl.SQLDataType.BIGINT.nullable(false), this, "");

    /**
     * The column <code>public.hs_doctor.workplace</code>.
     */
    public final TableField<Record, Long> WORKPLACE = createField(DSL.name("workplace"), org.jooq.impl.SQLDataType.BIGINT.nullable(false), this, "");

    /**
     * Create a <code>public.hs_doctor</code> table reference
     */
    public HsDoctor() {
        this(DSL.name("hs_doctor"), null);
    }

    /**
     * Create an aliased <code>public.hs_doctor</code> table reference
     */
    public HsDoctor(String alias) {
        this(DSL.name(alias), HS_DOCTOR);
    }

    /**
     * Create an aliased <code>public.hs_doctor</code> table reference
     */
    public HsDoctor(Name alias) {
        this(alias, HS_DOCTOR);
    }

    private HsDoctor(Name alias, Table<Record> aliased) {
        this(alias, aliased, null);
    }

    private HsDoctor(Name alias, Table<Record> aliased, Field<?>[] parameters) {
        super(alias, null, aliased, parameters, DSL.comment(""));
    }

    public <O extends Record> HsDoctor(Table<O> child, ForeignKey<O, Record> key) {
        super(child, key, HS_DOCTOR);
    }

    @Override
    public Schema getSchema() {
        return Public.PUBLIC;
    }

    @Override
    public List<Index> getIndexes() {
        return Arrays.<Index>asList(Indexes.HS_DOCTOR_PKEY);
    }

    @Override
    public UniqueKey<Record> getPrimaryKey() {
        return Keys.HS_DOCTOR_PKEY;
    }

    @Override
    public List<UniqueKey<Record>> getKeys() {
        return Arrays.<UniqueKey<Record>>asList(Keys.HS_DOCTOR_PKEY);
    }

    @Override
    public List<ForeignKey<Record, ?>> getReferences() {
        return Arrays.<ForeignKey<Record, ?>>asList(Keys.HS_DOCTOR__HS_DOCTOR_ID_FKEY, Keys.HS_DOCTOR__HS_DOCTOR_WORKPLACE_FKEY);
    }

    public Person person() {
        return new Person(this, Keys.HS_DOCTOR__HS_DOCTOR_ID_FKEY);
    }

    public Province province() {
        return new Province(this, Keys.HS_DOCTOR__HS_DOCTOR_WORKPLACE_FKEY);
    }

    @Override
    public HsDoctor as(String alias) {
        return new HsDoctor(DSL.name(alias), this);
    }

    @Override
    public HsDoctor as(Name alias) {
        return new HsDoctor(alias, this);
    }

    /**
     * Rename this table
     */
    @Override
    public HsDoctor rename(String name) {
        return new HsDoctor(DSL.name(name), null);
    }

    /**
     * Rename this table
     */
    @Override
    public HsDoctor rename(Name name) {
        return new HsDoctor(name, null);
    }
}
