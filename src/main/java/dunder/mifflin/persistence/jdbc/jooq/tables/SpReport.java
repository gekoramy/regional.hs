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
public class SpReport extends TableImpl<Record> {

    private static final long serialVersionUID = -964172645;

    /**
     * The reference instance of <code>public.sp_report</code>
     */
    public static final SpReport SP_REPORT = new SpReport();

    /**
     * The class holding records for this type
     */
    @Override
    public Class<Record> getRecordType() {
        return Record.class;
    }

    /**
     * The column <code>public.sp_report.ticket</code>.
     */
    public final TableField<Record, Long> TICKET = createField(DSL.name("ticket"), org.jooq.impl.SQLDataType.BIGINT.nullable(false), this, "");

    /**
     * The column <code>public.sp_report.date</code>.
     */
    public final TableField<Record, OffsetDateTime> DATE = createField(DSL.name("date"), org.jooq.impl.SQLDataType.TIMESTAMPWITHTIMEZONE.nullable(false).defaultValue(org.jooq.impl.DSL.field("CURRENT_TIMESTAMP", org.jooq.impl.SQLDataType.TIMESTAMPWITHTIMEZONE)), this, "");

    /**
     * The column <code>public.sp_report.note</code>.
     */
    public final TableField<Record, String> NOTE = createField(DSL.name("note"), org.jooq.impl.SQLDataType.CLOB.nullable(false), this, "");

    /**
     * Create a <code>public.sp_report</code> table reference
     */
    public SpReport() {
        this(DSL.name("sp_report"), null);
    }

    /**
     * Create an aliased <code>public.sp_report</code> table reference
     */
    public SpReport(String alias) {
        this(DSL.name(alias), SP_REPORT);
    }

    /**
     * Create an aliased <code>public.sp_report</code> table reference
     */
    public SpReport(Name alias) {
        this(alias, SP_REPORT);
    }

    private SpReport(Name alias, Table<Record> aliased) {
        this(alias, aliased, null);
    }

    private SpReport(Name alias, Table<Record> aliased, Field<?>[] parameters) {
        super(alias, null, aliased, parameters, DSL.comment(""));
    }

    public <O extends Record> SpReport(Table<O> child, ForeignKey<O, Record> key) {
        super(child, key, SP_REPORT);
    }

    @Override
    public Schema getSchema() {
        return Public.PUBLIC;
    }

    @Override
    public List<Index> getIndexes() {
        return Arrays.<Index>asList(Indexes.SP_REPORT_PKEY);
    }

    @Override
    public UniqueKey<Record> getPrimaryKey() {
        return Keys.SP_REPORT_PKEY;
    }

    @Override
    public List<UniqueKey<Record>> getKeys() {
        return Arrays.<UniqueKey<Record>>asList(Keys.SP_REPORT_PKEY);
    }

    @Override
    public List<ForeignKey<Record, ?>> getReferences() {
        return Arrays.<ForeignKey<Record, ?>>asList(Keys.SP_REPORT__SP_REPORT_TICKET_FKEY);
    }

    public SpTicket spTicket() {
        return new SpTicket(this, Keys.SP_REPORT__SP_REPORT_TICKET_FKEY);
    }

    @Override
    public SpReport as(String alias) {
        return new SpReport(DSL.name(alias), this);
    }

    @Override
    public SpReport as(Name alias) {
        return new SpReport(alias, this);
    }

    /**
     * Rename this table
     */
    @Override
    public SpReport rename(String name) {
        return new SpReport(DSL.name(name), null);
    }

    /**
     * Rename this table
     */
    @Override
    public SpReport rename(Name name) {
        return new SpReport(name, null);
    }
}
