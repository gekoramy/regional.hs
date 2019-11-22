package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.RegionDAO;
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
    void byKeys() {
        final var results = dao.byKeys(new Long[]{1L, 21L});

        assertFalse(results.containsKey(21L));

        Optional.ofNullable(results.get(1L))
                .ifPresentOrElse(
                        (region) -> {
                            assertEquals(1, region.id());
                            assertEquals("Abruzzo", region.name());
                        },
                        Assertions::fail
                );
    }

    @Test
    void fetchAll() {
        assertEquals(20, dao.fetchAll().count());
    }
}