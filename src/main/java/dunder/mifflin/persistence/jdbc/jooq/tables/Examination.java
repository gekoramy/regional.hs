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
public class Examination extends TableImpl<Record> {

    private static final long serialVersionUID = -733264617;

    /**
     * The reference instance of <code>public.examination</code>
     */
    public static final Examination EXAMINATION = new Examination();

    /**
     * The class holding records for this type
     */
    @Override
    public Class<Record> getRecordType() {
        return Record.class;
    }

    /**
     * The column <code>public.examination.id</code>.
     */
    public final TableField<Record, Long> ID = createField(DSL.name("id"), org.jooq.impl.SQLDataType.BIGINT.nullable(false).defaultValue(org.jooq.impl.DSL.field("nextval('examination_id_seq'::regclass)", org.jooq.impl.SQLDataType.BIGINT)), this, "");

    /**
     * The column <code>public.examination.name</code>.
     */
    public final TableField<Record, String> NAME = createField(DSL.name("name"), org.jooq.impl.SQLDataType.CLOB.nullable(false), this, "");

    /**
     * The column <code>public.examination.info</code>.
     */
    public final TableField<Record, String> INFO = createField(DSL.name("info"), org.jooq.impl.SQLDataType.CLOB.nullable(false), this, "");

    /**
     * Create a <code>public.examination</code> table reference
     */
    public Examination() {
        this(DSL.name("examination"), null);
    }

    /**
     * Create an aliased <code>public.examination</code> table reference
     */
    public Examination(String alias) {
        this(DSL.name(alias), EXAMINATION);
    }

    /**
     * Create an aliased <code>public.examination</code> table reference
     */
    public Examination(Name alias) {
        this(alias, EXAMINATION);
    }

    private Examination(Name alias, Table<Record> aliased) {
        this(alias, aliased, null);
    }

    private Examination(Name alias, Table<Record> aliased, Field<?>[] parameters) {
        super(alias, null, aliased, parameters, DSL.comment(""));
    }

    public <O extends Record> Examination(Table<O> child, ForeignKey<O, Record> key) {
        super(child, key, EXAMINATION);
    }

    @Override
    public Schema getSchema() {
        return Public.PUBLIC;
    }

    @Override
    public List<Index> getIndexes() {
        return Arrays.<Index>asList(Indexes.EXAMINATION_NAME_KEY, Indexes.EXAMINATION_PKEY);
    }

    @Override
    public Identity<Record, Long> getIdentity() {
        return Keys.IDENTITY_EXAMINATION;
    }

    @Override
    public UniqueKey<Record> getPrimaryKey() {
        return Keys.EXAMINATION_PKEY;
    }

    @Override
    public List<UniqueKey<Record>> getKeys() {
        return Arrays.<UniqueKey<Record>>asList(Keys.EXAMINATION_PKEY, Keys.EXAMINATION_NAME_KEY);
    }

    @Override
    public Examination as(String alias) {
        return new Examination(DSL.name(alias), this);
    }

    @Override
    public Examination as(Name alias) {
        return new Examination(alias, this);
    }

    /**
     * Rename this table
     */
    @Override
    public Examination rename(String name) {
        return new Examination(DSL.name(name), null);
    }

    /**
     * Rename this table
     */
    @Override
    public Examination rename(Name name) {
        return new Examination(name, null);
    }
}
