package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.ProvinceDAO;
import dunder.mifflin.persistance.jdbc.config.Database;
import org.jooq.DSLContext;
import org.jooq.SQLDialect;
import org.jooq.impl.DSL;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;

class ProvinceJDBCTest {

    private static Connection conn;
    private static DSLContext create;
    private static ProvinceDAO dao;

    @BeforeAll
    static void open() throws SQLException {
        conn = DriverManager.getConnection(
                Database.URL,
                Database.USERNAME,
                Database.PASSWORD
        );
        create = DSL.using(conn, SQLDialect.POSTGRES);
        dao = new ProvinceJDBC(create);
    }

    @AfterAll
    static void close() throws SQLException {
        conn.close();
        create.close();
    }

    @Test
    void count() {
        assertEquals(12, dao.count());
    }

    @Test
    void byKey() {
        dao.byKey(1L).ifPresentOrElse(
                (province) -> {
                    assertEquals(1L, province.id());
                    assertEquals(4L, province.region());
                    assertEquals("Avellino", province.name());
                    assertEquals("AV", province.abbreviation());
                },
                Assertions::fail
        );

        assertFalse(dao.byKey(0L).isPresent());
    }

    @Test
    void fetchAll() {
        assertEquals(12, dao.fetchAll().count());
    }
}