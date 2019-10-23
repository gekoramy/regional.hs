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
public class General extends TableImpl<Record> {

    private static final long serialVersionUID = -1645141900;

    /**
     * The reference instance of <code>public.general</code>
     */
    public static final General GENERAL = new General();

    /**
     * The class holding records for this type
     */
    @Override
    public Class<Record> getRecordType() {
        return Record.class;
    }

    /**
     * The column <code>public.general.id</code>.
     */
    public final TableField<Record, Long> ID = createField(DSL.name("id"), org.jooq.impl.SQLDataType.BIGINT.nullable(false), this, "");

    /**
     * The column <code>public.general.workplace</code>.
     */
    public final TableField<Record, Long> WORKPLACE = createField(DSL.name("workplace"), org.jooq.impl.SQLDataType.BIGINT.nullable(false), this, "");

    /**
     * Create a <code>public.general</code> table reference
     */
    public General() {
        this(DSL.name("general"), null);
    }

    /**
     * Create an aliased <code>public.general</code> table reference
     */
    public General(String alias) {
        this(DSL.name(alias), GENERAL);
    }

    /**
     * Create an aliased <code>public.general</code> table reference
     */
    public General(Name alias) {
        this(alias, GENERAL);
    }

    private General(Name alias, Table<Record> aliased) {
        this(alias, aliased, null);
    }

    private General(Name alias, Table<Record> aliased, Field<?>[] parameters) {
        super(alias, null, aliased, parameters, DSL.comment(""));
    }

    public <O extends Record> General(Table<O> child, ForeignKey<O, Record> key) {
        super(child, key, GENERAL);
    }

    @Override
    public Schema getSchema() {
        return Public.PUBLIC;
    }

    @Override
    public List<Index> getIndexes() {
        return Arrays.<Index>asList(Indexes.GENERAL_PKEY);
    }

    @Override
    public UniqueKey<Record> getPrimaryKey() {
        return Keys.GENERAL_PKEY;
    }

    @Override
    public List<UniqueKey<Record>> getKeys() {
        return Arrays.<UniqueKey<Record>>asList(Keys.GENERAL_PKEY);
    }

    @Override
    public List<ForeignKey<Record, ?>> getReferences() {
        return Arrays.<ForeignKey<Record, ?>>asList(Keys.GENERAL__GENERAL_ID_FKEY, Keys.GENERAL__GENERAL_WORKPLACE_FKEY);
    }

    public Person person() {
        return new Person(this, Keys.GENERAL__GENERAL_ID_FKEY);
    }

    public Province province() {
        return new Province(this, Keys.GENERAL__GENERAL_WORKPLACE_FKEY);
    }

    @Override
    public General as(String alias) {
        return new General(DSL.name(alias), this);
    }

    @Override
    public General as(Name alias) {
        return new General(alias, this);
    }

    /**
     * Rename this table
     */
    @Override
    public General rename(String name) {
        return new General(DSL.name(name), null);
    }

    /**
     * Rename this table
     */
    @Override
    public General rename(Name name) {
        return new General(name, null);
    }
}
