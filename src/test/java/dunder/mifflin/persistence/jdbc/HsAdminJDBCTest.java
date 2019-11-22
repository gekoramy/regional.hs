package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.HsAdminDAO;
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
import java.time.LocalDate;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;

class HsAdminJDBCTest {

    private static Connection conn;
    private static DSLContext create;
    private static HsAdminDAO dao;

    @BeforeAll
    static void open() throws SQLException {
        conn = DriverManager.getConnection(
                Database.URL,
                Database.USERNAME,
                Database.PASSWORD
        );
        create = DSL.using(conn, SQLDialect.POSTGRES);
        dao = new HsAdminJDBC(create);
    }

    @AfterAll
    static void close() throws SQLException {
        conn.close();
        create.close();
    }

    @Test
    void count() {
        assertEquals(2, dao.count());
    }

    @Test
    void byKey() {
        dao.byKey(1L).ifPresentOrElse(
                (admin) -> {
                    assertEquals(1L, admin.id());
                    assertEquals("Giovanni", admin.name());
                    assertEquals("Bianchi", admin.surname());
                    assertEquals("giovanni.bianchi@dominio.com", admin.email());
                    assertEquals(LocalDate.of(1961, 4, 1), admin.birthday());
                    assertEquals(853L, admin.birthplace());
                    assertEquals("BNCGNN61D01I066G", admin.fc());
                    assertEquals(true, admin.gender());
                    assertEquals(1081L, admin.residence());
                    assertEquals(11L, admin.workplace());
                },
                Assertions::fail
        );

        Assertions.assertFalse(dao.byKey(2L).isPresent());
    }

    @Test
    void byKeys() {
        final var results = dao.byKeys(new Long[]{5L, 33L});

        assertFalse(results.containsKey(5L));

        Optional.ofNullable(results.get(33L))
                .ifPresentOrElse(
                        (admin) -> {
                            assertEquals(33L, admin.id());
                            assertEquals("Alessandro", admin.name());
                            assertEquals("Grassi", admin.surname());
                            assertEquals("alessandro.grassi@dominio.com", admin.email());
                            assertEquals(LocalDate.of(1983, 10, 29), admin.birthday());
                            assertEquals(400L, admin.birthplace());
                            assertEquals("GRSLSN83R29A294A", admin.fc());
                            assertEquals(true, admin.gender());
                            assertEquals(827L, admin.residence());
                            assertEquals(10L, admin.workplace());
                        },
                        Assertions::fail
                );
    }

    @Test
    void fetchAll() {
        assertEquals(2, dao.fetchAll().count());
    }
}