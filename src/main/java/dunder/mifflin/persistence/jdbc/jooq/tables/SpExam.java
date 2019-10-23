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
public class SpExam extends TableImpl<Record> {

    private static final long serialVersionUID = 717259603;

    /**
     * The reference instance of <code>public.sp_exam</code>
     */
    public static final SpExam SP_EXAM = new SpExam();

    /**
     * The class holding records for this type
     */
    @Override
    public Class<Record> getRecordType() {
        return Record.class;
    }

    /**
     * The column <code>public.sp_exam.id</code>.
     */
    public final TableField<Record, Long> ID = createField(DSL.name("id"), org.jooq.impl.SQLDataType.BIGINT.nullable(false), this, "");

    /**
     * Create a <code>public.sp_exam</code> table reference
     */
    public SpExam() {
        this(DSL.name("sp_exam"), null);
    }

    /**
     * Create an aliased <code>public.sp_exam</code> table reference
     */
    public SpExam(String alias) {
        this(DSL.name(alias), SP_EXAM);
    }

    /**
     * Create an aliased <code>public.sp_exam</code> table reference
     */
    public SpExam(Name alias) {
        this(alias, SP_EXAM);
    }

    private SpExam(Name alias, Table<Record> aliased) {
        this(alias, aliased, null);
    }

    private SpExam(Name alias, Table<Record> aliased, Field<?>[] parameters) {
        super(alias, null, aliased, parameters, DSL.comment(""));
    }

    public <O extends Record> SpExam(Table<O> child, ForeignKey<O, Record> key) {
        super(child, key, SP_EXAM);
    }

    @Override
    public Schema getSchema() {
        return Public.PUBLIC;
    }

    @Override
    public List<Index> getIndexes() {
        return Arrays.<Index>asList(Indexes.SP_EXAM_PKEY);
    }

    @Override
    public UniqueKey<Record> getPrimaryKey() {
        return Keys.SP_EXAM_PKEY;
    }

    @Override
    public List<UniqueKey<Record>> getKeys() {
        return Arrays.<UniqueKey<Record>>asList(Keys.SP_EXAM_PKEY);
    }

    @Override
    public List<ForeignKey<Record, ?>> getReferences() {
        return Arrays.<ForeignKey<Record, ?>>asList(Keys.SP_EXAM__SP_EXAM_ID_FKEY);
    }

    public Examination examination() {
        return new Examination(this, Keys.SP_EXAM__SP_EXAM_ID_FKEY);
    }

    @Override
    public SpExam as(String alias) {
        return new SpExam(DSL.name(alias), this);
    }

    @Override
    public SpExam as(Name alias) {
        return new SpExam(alias, this);
    }

    /**
     * Rename this table
     */
    @Override
    public SpExam rename(String name) {
        return new SpExam(DSL.name(name), null);
    }

    /**
     * Rename this table
     */
    @Override
    public SpExam rename(Name name) {
        return new SpExam(name, null);
    }
}
