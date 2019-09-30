package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.CityDAO;
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

class CityJDBCTest {

    private static Connection conn;
    private static DSLContext create;
    private static CityDAO dao;

    @BeforeAll
    static void open() throws SQLException {
        conn = DriverManager.getConnection(
                Database.URL,
                Database.USERNAME,
                Database.PASSWORD
        );
        create = DSL.using(conn, SQLDialect.POSTGRES);
        dao = new CityJDBC(create);
    }

    @AfterAll
    static void close() throws SQLException {
        conn.close();
        create.close();
    }

    @Test
    void count() {
        Assertions.assertEquals(1176, dao.count());
    }

    @Test
    void byKey() {
        dao.byKey(1L).ifPresentOrElse(
                (city) -> {
                    assertEquals(1L, city.id());
                    assertEquals("Aiello del Sabato", city.name());
                    assertEquals(1L, city.province());
                },
                Assertions::fail
        );

        Assertions.assertFalse(dao.byKey(1177L).isPresent());
    }

    @Test
    void fetchAll() {
        assertEquals(1176, dao.fetchAll().count());
    }
}