package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.SecretDao;
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
        dao.by("arianna.bonetti@dominio.com").ifPresentOrElse(
                (password) -> {
                    assertEquals(99L, password.id());
                    assertEquals("$2a$10$.gNhlbOp8If4MEgnZapIg.2PqHPKS1LB0LeIddTUrOpB//5XxGgUO", password.password());
                },
                Assertions::fail
        );

        assertFalse(dao.by("fake").isPresent());
    }

    @Test
    void store() {
        dao.store(99L, "password").ifPresentOrElse(
                (secret) -> {
                    assertEquals(99L, secret.id());
                    assertEquals("password", secret.password());
                },
                Assertions::fail
        );

        dao.byKey(99L).ifPresentOrElse(
                (secret) -> {
                    assertEquals(99L, secret.id());
                    assertEquals("password", secret.password());
                },
                Assertions::fail
        );

        dao.store(99L, "$2a$10$.gNhlbOp8If4MEgnZapIg.2PqHPKS1LB0LeIddTUrOpB//5XxGgUO").ifPresentOrElse(
                (secret) -> {
                    assertEquals(99L, secret.id());
                    assertEquals("$2a$10$.gNhlbOp8If4MEgnZapIg.2PqHPKS1LB0LeIddTUrOpB//5XxGgUO", secret.password());
                },
                Assertions::fail
        );

        assertFalse(dao.store(0L, "$2a$10$.gNhlbOp8If4MEgnZapIg.2PqHPKS1LB0LeIddTUrOpB//5XxGgUO").isPresent());
    }

    @Test
    void count() {
        assertEquals(257, dao.count());
    }

    @Test
    void byKey() {
        dao.byKey(99L).ifPresentOrElse(
                (password) -> {
                    assertEquals(99L, password.id());
                    assertEquals("$2a$10$.gNhlbOp8If4MEgnZapIg.2PqHPKS1LB0LeIddTUrOpB//5XxGgUO", password.password());
                },
                Assertions::fail
        );

        assertFalse(dao.byKey(0L).isPresent());
    }

    @Test
    void fetchAll() {
        assertEquals(257, dao.fetchAll().count());
    }
}