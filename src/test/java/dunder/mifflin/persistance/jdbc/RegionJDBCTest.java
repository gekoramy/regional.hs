package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.RegionDAO;
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

class RegionJDBCTest {

    private static Connection conn;
    private static DSLContext create;
    private static RegionDAO dao;

    @BeforeAll
    static void open() throws SQLException {
        conn = DriverManager.getConnection(
                Database.URL,
                Database.USERNAME,
                Database.PASSWORD
        );
        create = DSL.using(conn, SQLDialect.POSTGRES);
        dao = new RegionJDBC(create);
    }

    @AfterAll
    static void close() throws SQLException {
        conn.close();
        create.close();
    }

    @Test
    void count() {
        assertEquals(20, dao.count());
    }

    @Test
    void byKey() {
        dao.byKey(1L).ifPresentOrElse(
                (region) -> {
                    assertEquals(1, region.id());
                    assertEquals("Abruzzo", region.name());
                },
                Assertions::fail
        );

        assertFalse(dao.byKey(21L).isPresent());
    }

    @Test
    void fetchAll() {
        assertEquals(20, dao.fetchAll().count());
    }
}