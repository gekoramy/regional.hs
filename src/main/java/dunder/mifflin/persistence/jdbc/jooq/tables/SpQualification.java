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
public class SpQualification extends TableImpl<Record> {

    private static final long serialVersionUID = 2078813905;

    /**
     * The reference instance of <code>public.sp_qualification</code>
     */
    public static final SpQualification SP_QUALIFICATION = new SpQualification();

    /**
     * The class holding records for this type
     */
    @Override
    public Class<Record> getRecordType() {
        return Record.class;
    }

    /**
     * The column <code>public.sp_qualification.specialist</code>.
     */
    public final TableField<Record, Long> SPECIALIST = createField(DSL.name("specialist"), org.jooq.impl.SQLDataType.BIGINT.nullable(false), this, "");

    /**
     * The column <code>public.sp_qualification.exam</code>.
     */
    public final TableField<Record, Long> EXAM = createField(DSL.name("exam"), org.jooq.impl.SQLDataType.BIGINT.nullable(false), this, "");

    /**
     * Create a <code>public.sp_qualification</code> table reference
     */
    public SpQualification() {
        this(DSL.name("sp_qualification"), null);
    }

    /**
     * Create an aliased <code>public.sp_qualification</code> table reference
     */
    public SpQualification(String alias) {
        this(DSL.name(alias), SP_QUALIFICATION);
    }

    /**
     * Create an aliased <code>public.sp_qualification</code> table reference
     */
    public SpQualification(Name alias) {
        this(alias, SP_QUALIFICATION);
    }

    private SpQualification(Name alias, Table<Record> aliased) {
        this(alias, aliased, null);
    }

    private SpQualification(Name alias, Table<Record> aliased, Field<?>[] parameters) {
        super(alias, null, aliased, parameters, DSL.comment(""));
    }

    public <O extends Record> SpQualification(Table<O> child, ForeignKey<O, Record> key) {
        super(child, key, SP_QUALIFICATION);
    }

    @Override
    public Schema getSchema() {
        return Public.PUBLIC;
    }

    @Override
    public List<Index> getIndexes() {
        return Arrays.<Index>asList(Indexes.SP_QUALIFICATION_PKEY);
    }

    @Override
    public UniqueKey<Record> getPrimaryKey() {
        return Keys.SP_QUALIFICATION_PKEY;
    }

    @Override
    public List<UniqueKey<Record>> getKeys() {
        return Arrays.<UniqueKey<Record>>asList(Keys.SP_QUALIFICATION_PKEY);
    }

    @Override
    public List<ForeignKey<Record, ?>> getReferences() {
        return Arrays.<ForeignKey<Record, ?>>asList(Keys.SP_QUALIFICATION__SP_QUALIFICATION_SPECIALIST_FKEY, Keys.SP_QUALIFICATION__SP_QUALIFICATION_EXAM_FKEY);
    }

    public Specialist specialist() {
        return new Specialist(this, Keys.SP_QUALIFICATION__SP_QUALIFICATION_SPECIALIST_FKEY);
    }

    public SpExam spExam() {
        return new SpExam(this, Keys.SP_QUALIFICATION__SP_QUALIFICATION_EXAM_FKEY);
    }

    @Override
    public SpQualification as(String alias) {
        return new SpQualification(DSL.name(alias), this);
    }

    @Override
    public SpQualification as(Name alias) {
        return new SpQualification(alias, this);
    }

    /**
     * Rename this table
     */
    @Override
    public SpQualification rename(String name) {
        return new SpQualification(DSL.name(name), null);
    }

    /**
     * Rename this table
     */
    @Override
    public SpQualification rename(Name name) {
        return new SpQualification(name, null);
    }
}
