package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.SpecialistDAO;
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

class SpecialistJDBCTest {

    private static Connection conn;
    private static DSLContext create;
    private static SpecialistDAO dao;

    @BeforeAll
    static void open() throws SQLException {
        conn = DriverManager.getConnection(
                Database.URL,
                Database.USERNAME,
                Database.PASSWORD
        );
        create = DSL.using(conn, SQLDialect.POSTGRES);
        dao = new SpecialistJDBC(create);
    }

    @AfterAll
    static void close() throws SQLException {
        conn.close();
        create.close();
    }

    @Test
    void count() {
        assertEquals(5, dao.count());
    }

    @Test
    void byKey() {
        dao.byKey(26L).ifPresentOrElse(
                (specialist) -> {
                    assertEquals(26L, specialist.id());
                    assertEquals("Attilio", specialist.name());
                    assertEquals("Guerra", specialist.surname());
                    assertEquals("attilio.guerra@dominio.com", specialist.email());
                    assertEquals(LocalDate.of(1983, 3, 1), specialist.birthday());
                    assertEquals(172L, specialist.birthplace());
                    assertEquals("GRRTTL83C01G827Z", specialist.fc());
                    assertEquals(true, specialist.gender());
                    assertEquals(997L, specialist.residence());
                },
                Assertions::fail
        );

        Assertions.assertFalse(dao.byKey(1L).isPresent());
    }

    @Test
    void byKeys() {
        final var results = dao.byKeys(new Long[]{1L, 26L});

        assertFalse(results.containsKey(1L));

        Optional.ofNullable(results.get(26L))
                .ifPresentOrElse(
                        (specialist) -> {
                            assertEquals(26L, specialist.id());
                            assertEquals("Attilio", specialist.name());
                            assertEquals("Guerra", specialist.surname());
                            assertEquals("attilio.guerra@dominio.com", specialist.email());
                            assertEquals(LocalDate.of(1983, 3, 1), specialist.birthday());
                            assertEquals(172L, specialist.birthplace());
                            assertEquals("GRRTTL83C01G827Z", specialist.fc());
                            assertEquals(true, specialist.gender());
                            assertEquals(997L, specialist.residence());
                        },
                        Assertions::fail
                );
    }

    @Test
    void fetchAll() {
        assertEquals(5, dao.fetchAll().count());
    }
}