package dunder.mifflin.persistance.jdbc.generics;

import org.jooq.DSLContext;

public abstract class JDBC {

    protected final DSLContext context;

    public JDBC(DSLContext context) {
        this.context = context;
    }
}
