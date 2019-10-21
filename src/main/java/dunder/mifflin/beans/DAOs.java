package dunder.mifflin.beans;

import dunder.mifflin.persistence.daos.generics.DAOFactory;
import dunder.mifflin.persistence.jdbc.generics.JDBCFactory;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.ejb.Singleton;
import javax.sql.DataSource;

@Singleton
public class DAOs {

    @Resource
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
