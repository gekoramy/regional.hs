package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.AvatarDAO;
import dunder.mifflin.persistance.jdbc.config.Database;
import org.jooq.DSLContext;
import org.jooq.SQLDialect;
import org.jooq.exception.DataAccessException;
import org.jooq.impl.DSL;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import static org.junit.jupiter.api.Assertions.assertEquals;

class AvatarJDBCTest {

    private static Connection conn;
    private static DSLContext create;
    private static AvatarDAO dao;

    @BeforeAll
    static void open() throws SQLException {
        conn = DriverManager.getConnection(
                Database.URL,
                Database.USERNAME,
                Database.PASSWORD
        );
        create = DSL.using(conn, SQLDialect.POSTGRES);
        dao = new AvatarJDBC(create);
    }

    @AfterAll
    static void close() throws SQLException {
        conn.close();
        create.close();
    }

    @Test
    void testStoreRemove() {
        final var store = dao.store(1L, "url");

        assertEquals(1L, store.id());
        assertEquals("url", store.url());

        dao.byKey(store.id()).ifPresentOrElse(
                (avatar) -> {
                    assertEquals(1L, avatar.id());
                    assertEquals("url", avatar.url());
                },
                Assertions::fail
        );

        dao.remove(store.id()).ifPresentOrElse(
                (avatar) -> {
                    assertEquals(1L, avatar.id());
                    assertEquals("url", avatar.url());
                },
                Assertions::fail
        );

        Assertions.assertFalse(dao.byKey(store.id()).isPresent());

        Assertions.assertThrows(DataAccessException.class, () -> dao.store(0L, "url"), "not existing person");
    }

    @Test
    void count() {
        assertEquals(0, dao.count());
    }

    @Test
    void byKey() {
        Assertions.assertFalse(dao.byKey(0L).isPresent());
    }

    @Test
    void fetchAll() {
        assertEquals(0, dao.fetchAll().count());
    }
}
