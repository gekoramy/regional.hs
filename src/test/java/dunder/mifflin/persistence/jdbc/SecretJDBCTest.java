package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.SecretDao;
import dunder.mifflin.persistence.jdbc.config.Database;
import dunder.mifflin.persistence.pojos.Secret;
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

class SecretJDBCTest {

    private static Connection conn;
    private static DSLContext create;
    private static SecretDao dao;

    @BeforeAll
    static void open() throws SQLException {
        conn = DriverManager.getConnection(
                Database.URL,
                Database.USERNAME,
                Database.PASSWORD
        );
        create = DSL.using(conn, SQLDialect.POSTGRES);
        dao = new SecretJDBC(create);
    }

    @AfterAll
    static void close() throws SQLException {
        conn.close();
        create.close();
    }

    @Test
    void by() {
        dao.by("silvia.ruggiero@dominio.com").ifPresentOrElse(
                (password) -> {
                    assertEquals(28L, password.id());
                    assertEquals("$2a$10$3KRLqLN2Lpa7AGdNoBadwu.rYF9hQx9YkykKgqv./c4cmxHheOvnS", password.password());
                },
                Assertions::fail
        );

        assertFalse(dao.by("fake").isPresent());
    }

    @Test
    void store() {

        final String before = dao.byKey(49L).map(Secret::password).orElseThrow();

        dao.store(49L, "password").ifPresentOrElse(
                (secret) -> {
                    assertEquals(49L, secret.id());
                    assertEquals("password", secret.password());
                },
                Assertions::fail
        );

        dao.byKey(49L).ifPresentOrElse(
                (secret) -> {
                    assertEquals(49L, secret.id());
                    assertEquals("password", secret.password());
                },
                Assertions::fail
        );

        dao.store(49L, before).ifPresentOrElse(
                (secret) -> {
                    assertEquals(49L, secret.id());
                    assertEquals(before, secret.password());
                },
                Assertions::fail
        );

        assertFalse(dao.store(51L, "prova").isPresent());
    }

    @Test
    void count() {
        assertEquals(50, dao.count());
    }

    @Test
    void byKey() {
        dao.byKey(49L).ifPresentOrElse(
                (password) -> {
                    assertEquals(49L, password.id());
                    assertEquals("$2a$10$BIX5QbpAZiGHgmu3RXbtF.hYIeGk8GSOeYedmiFR9o51BGEoGtIEa", password.password());
                },
                Assertions::fail
        );

        assertFalse(dao.byKey(0L).isPresent());
    }

    @Test
    void byKeys() {
        final var results = dao.byKeys(0L, 49L);

        assertFalse(results.containsKey(0L));

        Optional.ofNullable(results.get(49L))
                .ifPresentOrElse(
                        (password) -> {
                            assertEquals(49L, password.id());
                            assertEquals("$2a$10$BIX5QbpAZiGHgmu3RXbtF.hYIeGk8GSOeYedmiFR9o51BGEoGtIEa", password.password());
                        },
                        Assertions::fail
                );
    }

    @Test
    void fetchAll() {
        assertEquals(50, dao.fetchAll().count());
    }
}