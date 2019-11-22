package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.TokenDAO;
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
import java.time.OffsetDateTime;
import java.time.temporal.ChronoUnit;

import static org.junit.jupiter.api.Assertions.*;

class TokenJDBCTest {

    private static Connection conn;
    private static DSLContext create;
    private static TokenDAO dao;

    @BeforeAll
    static void open() throws SQLException {
        conn = DriverManager.getConnection(
                Database.URL,
                Database.USERNAME,
                Database.PASSWORD
        );
        create = DSL.using(conn, SQLDialect.POSTGRES);
        dao = new TokenJDBC(create);
    }

    @AfterAll
    static void close() throws SQLException {
        conn.close();
        create.close();
    }

    @Test
    void testStoreRemove() {
        final var store = dao.store(1L);

        assertEquals(1L, store.person());
        assertNotNull(store.token());
        assertTrue(store.expiration().isBefore(OffsetDateTime.now().plus(125, ChronoUnit.MINUTES)));
        assertTrue(store.expiration().isAfter(OffsetDateTime.now().plus(115, ChronoUnit.MINUTES)));

        dao.byKey(1L).ifPresentOrElse(
                (recover) -> {
                    assertEquals(store.person(), recover.person());
                    assertEquals(store.token(), recover.token());
                    assertEquals(store.expiration(), recover.expiration());
                },
                Assertions::fail
        );

        dao.by(store.token()).ifPresentOrElse(
                (recover) -> {
                    assertEquals(store.person(), recover.person());
                    assertEquals(store.token(), recover.token());
                    assertEquals(store.expiration(), recover.expiration());
                },
                Assertions::fail
        );

        dao.remove(1L).ifPresentOrElse(
                (recover) -> {
                    assertEquals(store.person(), recover.person());
                    assertEquals(store.token(), recover.token());
                    assertEquals(store.expiration(), recover.expiration());
                },
                Assertions::fail
        );

        assertFalse(dao.byKey(1L).isPresent());
        assertFalse(dao.by(store.token()).isPresent());
    }

    @Test
    void count() {
        assertEquals(0, dao.count());
    }

    @Test
    void byKey() {
        assertFalse(dao.byKey(0L).isPresent(), "not existing person");
    }

    @Test
    void byKeys() {
        assertEquals(0, dao.byKeys(new Long[]{-1L, 0L}).size(), "not existing people");
    }

    @Test
    void fetchAll() {
        assertEquals(0, dao.fetchAll().count());
    }
}