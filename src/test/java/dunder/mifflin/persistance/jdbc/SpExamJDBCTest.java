package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.SpExamDAO;
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
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;

class SpExamJDBCTest {

    private static Connection conn;
    private static DSLContext create;
    private static SpExamDAO dao;

    @BeforeAll
    static void open() throws SQLException {
        conn = DriverManager.getConnection(
                Database.URL,
                Database.USERNAME,
                Database.PASSWORD
        );
        create = DSL.using(conn, SQLDialect.POSTGRES);
        dao = new SpExamJDBC(create);
    }

    @AfterAll
    static void close() throws SQLException {
        conn.close();
        create.close();
    }

    @Test
    void qualifiedFor() {
        assertEquals(20, dao.qualifiedFor(116L).count());
        assertEquals(0, dao.qualifiedFor(1L).count());
    }

    @Test
    void contains() {
        assertEquals(59, dao.contains("").count());
        assertEquals(59, dao.contains("info").count());
        assertEquals(4, dao.contains("(").count());
        assertEquals(0, dao.contains("0").count());
    }

    @Test
    void count() {
        assertEquals(59, dao.count());
    }

    @Test
    void byKey() {
        dao.byKey(134L).ifPresentOrElse(
                (exam) -> {
                    assertEquals(134L, exam.id());
                    assertEquals("Risonanza magnetica nucleare (RM) muscoloscheletrica", exam.name());
                    assertEquals("Info Risonanza magnetica nucleare (RM) muscoloscheletrica", exam.info());
                },
                Assertions::fail
        );

        assertFalse(dao.byKey(1L).isPresent(), "not specialist exam");
        assertFalse(dao.byKey(0L).isPresent(), "not existing exam");
    }

    @Test
    void byKeys() {
        final var results = dao.byKeys(0L, 1L, 134L);

        assertFalse(results.containsKey(0L));
        assertFalse(results.containsKey(1L));

        Optional.ofNullable(results.get(134L))
                .ifPresentOrElse(
                        (exam) -> {
                            assertEquals(134L, exam.id());
                            assertEquals("Risonanza magnetica nucleare (RM) muscoloscheletrica", exam.name());
                            assertEquals("Info Risonanza magnetica nucleare (RM) muscoloscheletrica", exam.info());
                        },
                        Assertions::fail
                );
    }

    @Test
    void fetchAll() {
        assertEquals(59, dao.fetchAll().count());
    }
}