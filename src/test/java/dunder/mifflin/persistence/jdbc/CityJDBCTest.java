package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.CityDAO;
import dunder.mifflin.persistence.jdbc.config.Database;
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
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;

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
    void byKeys() {
        final var results = dao.byKeys(new Long[]{0L, 5L, 10L});

        assertFalse(results.containsKey(0L));

        Optional.ofNullable(results.get(5L))
                .ifPresentOrElse(
                        (city) -> {
                            assertEquals(5L, city.id());
                            assertEquals(1L, city.province());
                            assertEquals("Ariano Irpino", city.name());
                        },
                        Assertions::fail
                );

        Optional.ofNullable(results.get(10L))
                .ifPresentOrElse(
                        (city) -> {
                            assertEquals(10L, city.id());
                            assertEquals(1L, city.province());
                            assertEquals("Baiano", city.name());
                        },
                        Assertions::fail
                );
    }

    @Test
    void fetchAll() {
        assertEquals(1176, dao.fetchAll().count());
    }
}