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
public class Specialist extends TableImpl<Record> {

    private static final long serialVersionUID = 594911962;

    /**
     * The reference instance of <code>public.specialist</code>
     */
    public static final Specialist SPECIALIST = new Specialist();

    /**
     * The class holding records for this type
     */
    @Override
    public Class<Record> getRecordType() {
        return Record.class;
    }

    /**
     * The column <code>public.specialist.id</code>.
     */
    public final TableField<Record, Long> ID = createField(DSL.name("id"), org.jooq.impl.SQLDataType.BIGINT.nullable(false), this, "");

    /**
     * Create a <code>public.specialist</code> table reference
     */
    public Specialist() {
        this(DSL.name("specialist"), null);
    }

    /**
     * Create an aliased <code>public.specialist</code> table reference
     */
    public Specialist(String alias) {
        this(DSL.name(alias), SPECIALIST);
    }

    /**
     * Create an aliased <code>public.specialist</code> table reference
     */
    public Specialist(Name alias) {
        this(alias, SPECIALIST);
    }

    private Specialist(Name alias, Table<Record> aliased) {
        this(alias, aliased, null);
    }

    private Specialist(Name alias, Table<Record> aliased, Field<?>[] parameters) {
        super(alias, null, aliased, parameters, DSL.comment(""));
    }

    public <O extends Record> Specialist(Table<O> child, ForeignKey<O, Record> key) {
        super(child, key, SPECIALIST);
    }

    @Override
    public Schema getSchema() {
        return Public.PUBLIC;
    }

    @Override
    public List<Index> getIndexes() {
        return Arrays.<Index>asList(Indexes.SPECIALIST_PKEY);
    }

    @Override
    public UniqueKey<Record> getPrimaryKey() {
        return Keys.SPECIALIST_PKEY;
    }

    @Override
    public List<UniqueKey<Record>> getKeys() {
        return Arrays.<UniqueKey<Record>>asList(Keys.SPECIALIST_PKEY);
    }

    @Override
    public List<ForeignKey<Record, ?>> getReferences() {
        return Arrays.<ForeignKey<Record, ?>>asList(Keys.SPECIALIST__SPECIALIST_ID_FKEY);
    }

    public Person person() {
        return new Person(this, Keys.SPECIALIST__SPECIALIST_ID_FKEY);
    }

    @Override
    public Specialist as(String alias) {
        return new Specialist(DSL.name(alias), this);
    }

    @Override
    public Specialist as(Name alias) {
        return new Specialist(alias, this);
    }

    /**
     * Rename this table
     */
    @Override
    public Specialist rename(String name) {
        return new Specialist(DSL.name(name), null);
    }

    /**
     * Rename this table
     */
    @Override
    public Specialist rename(Name name) {
        return new Specialist(name, null);
    }
}
