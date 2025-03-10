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
import java.math.BigDecimal;
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
public class HsTicket extends TableImpl<Record> {

    private static final long serialVersionUID = 13795635;

    /**
     * The reference instance of <code>public.hs_ticket</code>
     */
    public static final HsTicket HS_TICKET = new HsTicket();

    /**
     * The class holding records for this type
     */
    @Override
    public Class<Record> getRecordType() {
        return Record.class;
    }

    /**
     * The column <code>public.hs_ticket.prescription</code>.
     */
    public final TableField<Record, Long> PRESCRIPTION = createField(DSL.name("prescription"), org.jooq.impl.SQLDataType.BIGINT.nullable(false), this, "");

    /**
     * The column <code>public.hs_ticket.responsible</code>.
     */
    public final TableField<Record, Long> RESPONSIBLE = createField(DSL.name("responsible"), org.jooq.impl.SQLDataType.BIGINT.nullable(false), this, "");

    /**
     * The column <code>public.hs_ticket.date</code>.
     */
    public final TableField<Record, OffsetDateTime> DATE = createField(DSL.name("date"), org.jooq.impl.SQLDataType.TIMESTAMPWITHTIMEZONE.nullable(false).defaultValue(org.jooq.impl.DSL.field("CURRENT_TIMESTAMP", org.jooq.impl.SQLDataType.TIMESTAMPWITHTIMEZONE)), this, "");

    /**
     * The column <code>public.hs_ticket.amount</code>.
     */
    public final TableField<Record, BigDecimal> AMOUNT = createField(DSL.name("amount"), org.jooq.impl.SQLDataType.NUMERIC(9, 2).nullable(false), this, "");

    /**
     * Create a <code>public.hs_ticket</code> table reference
     */
    public HsTicket() {
        this(DSL.name("hs_ticket"), null);
    }

    /**
     * Create an aliased <code>public.hs_ticket</code> table reference
     */
    public HsTicket(String alias) {
        this(DSL.name(alias), HS_TICKET);
    }

    /**
     * Create an aliased <code>public.hs_ticket</code> table reference
     */
    public HsTicket(Name alias) {
        this(alias, HS_TICKET);
    }

    private HsTicket(Name alias, Table<Record> aliased) {
        this(alias, aliased, null);
    }

    private HsTicket(Name alias, Table<Record> aliased, Field<?>[] parameters) {
        super(alias, null, aliased, parameters, DSL.comment(""));
    }

    public <O extends Record> HsTicket(Table<O> child, ForeignKey<O, Record> key) {
        super(child, key, HS_TICKET);
    }

    @Override
    public Schema getSchema() {
        return Public.PUBLIC;
    }

    @Override
    public List<Index> getIndexes() {
        return Arrays.<Index>asList(Indexes.HS_TICKET_PKEY);
    }

    @Override
    public UniqueKey<Record> getPrimaryKey() {
        return Keys.HS_TICKET_PKEY;
    }

    @Override
    public List<UniqueKey<Record>> getKeys() {
        return Arrays.<UniqueKey<Record>>asList(Keys.HS_TICKET_PKEY);
    }

    @Override
    public List<ForeignKey<Record, ?>> getReferences() {
        return Arrays.<ForeignKey<Record, ?>>asList(Keys.HS_TICKET__HS_TICKET_PRESCRIPTION_FKEY, Keys.HS_TICKET__HS_TICKET_RESPONSIBLE_FKEY);
    }

    public HsPrescription hsPrescription() {
        return new HsPrescription(this, Keys.HS_TICKET__HS_TICKET_PRESCRIPTION_FKEY);
    }

    public HsDoctor hsDoctor() {
        return new HsDoctor(this, Keys.HS_TICKET__HS_TICKET_RESPONSIBLE_FKEY);
    }

    @Override
    public HsTicket as(String alias) {
        return new HsTicket(DSL.name(alias), this);
    }

    @Override
    public HsTicket as(Name alias) {
        return new HsTicket(alias, this);
    }

    /**
     * Rename this table
     */
    @Override
    public HsTicket rename(String name) {
        return new HsTicket(DSL.name(name), null);
    }

    /**
     * Rename this table
     */
    @Override
    public HsTicket rename(Name name) {
        return new HsTicket(name, null);
    }
}
