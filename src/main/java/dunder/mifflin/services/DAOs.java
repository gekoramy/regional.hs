package dunder.mifflin.services;

import dunder.mifflin.persistance.daos.generics.DAOFactory;
import dunder.mifflin.persistance.jdbc.generics.JDBCFactory;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.ejb.Singleton;
import javax.sql.DataSource;

@Singleton
public class DAOs {

    @Resource(name = "PostgreSQL")
    private DataSource datasource;

    private DAOFactory factory;

    @PostConstruct
    private void init() {
        factory = new JDBCFactory(datasource);
    }

    public DAOFactory factory() {
        return factory;
    }
}
