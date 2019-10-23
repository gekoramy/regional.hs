package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.AvatarDAO;
import dunder.mifflin.persistence.jdbc.config.Database;
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
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;

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
        final var before = dao.byKey(1L).orElseThrow();

        final var store = dao.store(1L, "url");

        assertEquals(1L, store.id());
        assertEquals("url", store.url());

        dao.byKey(1L).ifPresentOrElse(
                (avatar) -> {
                    assertEquals(1L, avatar.id());
                    assertEquals("url", avatar.url());
                },
                Assertions::fail
        );

        dao.remove(1L).ifPresentOrElse(
                (avatar) -> {
                    assertEquals(1L, avatar.id());
                    assertEquals("url", avatar.url());
                },
                Assertions::fail
        );

        Assertions.assertFalse(dao.byKey(store.id()).isPresent());

        dao.store(before.id(), before.url());

        Assertions.assertThrows(DataAccessException.class, () -> dao.store(0L, "url"), "not existing person");
    }

    @Test
    void count() {
        assertEquals(50, dao.count());
    }

    @Test
    void byKey() {
        dao.byKey(1L).ifPresentOrElse(
                (avatar) -> {
                    assertEquals(1L, avatar.id());
                    assertEquals("avt.16208920041690972286.jpg", avatar.url());
                },
                Assertions::fail
        );

        Assertions.assertFalse(dao.byKey(0L).isPresent());
    }

    @Test
    void byKeys() {
        final var results = dao.byKeys(0L, 1L, 2L);

        assertFalse(results.containsKey(0L));

        Optional.ofNullable(results.get(1L))
                .ifPresentOrElse(
                        (avatar) -> {
                            assertEquals(1L, avatar.id());
                            assertEquals("avt.16208920041690972286.jpg", avatar.url());
                        },
                        Assertions::fail
                );

        Optional.ofNullable(results.get(2L))
                .ifPresentOrElse(
                        (avatar) -> {
                            assertEquals(2L, avatar.id());
                            assertEquals("avt.17139861944644222900.jpg", avatar.url());
                        },
                        Assertions::fail
                );
    }

    @Test
    void fetchAll() {
        assertEquals(50, dao.fetchAll().count());
    }
}
