package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.ReportDAO;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
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
import java.time.LocalDate;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;

class ReportJDBCTest {

    private static Connection conn;
    private static DSLContext create;
    private static ReportDAO dao;

    @BeforeAll
    static void open() throws SQLException {
        conn = DriverManager.getConnection(
                Database.URL,
                Database.USERNAME,
                Database.PASSWORD
        );
        create = DSL.using(conn, SQLDialect.POSTGRES);
        dao = new ReportJDBC(create);
    }

    @AfterAll
    static void close() throws SQLException {
        conn.close();
        create.close();
    }

    @Test
    void testStoreRemove() {
        final var store = dao.insert(1957L, "note");

        assertEquals(1957L, store.ticket());
        assertEquals(LocalDate.now(), store.date().toLocalDate());
        assertEquals("note", store.note());

        dao.byKey(store.ticket()).ifPresentOrElse(
                (report) -> {
                    assertEquals(store.ticket(), report.ticket());
                    assertEquals(store.date(), report.date());
                    assertEquals(store.note(), report.note());
                },
                Assertions::fail
        );

        dao.remove(store.ticket()).ifPresentOrElse(
                (report) -> {
                    assertEquals(store.ticket(), report.ticket());
                    assertEquals(store.date(), report.date());
                    assertEquals(store.note(), report.note());
                },
                Assertions::fail
        );

        Assertions.assertFalse(dao.byKey(store.ticket()).isPresent());

        Assertions.assertThrows(DAOException.class, () -> dao.insert(0L, "note"), "not existing ticket");

        Assertions.assertThrows(DataAccessException.class, () -> dao.insert(1280L, "note"), "already reported exam");
    }

    @Test
    void count() {
        assertEquals(285 + 285, dao.count());
    }

    @Test
    void byKey() {
        dao.byKey(1280L).ifPresentOrElse(
                (report) -> {
                    assertEquals(1280L, report.ticket());
                    assertEquals(LocalDate.of(2017, 11, 24), report.date().toLocalDate());
                    assertEquals("Risultato di Creatinina", report.note());
                },
                Assertions::fail
        );

        assertFalse(dao.byKey(0L).isPresent(), "not existing prescription");

        assertFalse(dao.byKey(1L).isPresent(), "not exam prescription");
    }

    @Test
    void byKeys() {
        final var results = dao.byKeys(0L, 1L, 1280L);

        assertFalse(results.containsKey(0L));

        assertFalse(results.containsKey(1L));

        Optional.ofNullable(results.get(1280L))
                .ifPresentOrElse(
                        (report) -> {
                            assertEquals(1280L, report.ticket());
                            assertEquals(LocalDate.of(2017, 11, 24), report.date().toLocalDate());
                            assertEquals("Risultato di Creatinina", report.note());
                        },
                        Assertions::fail
                );
    }

    @Test
    void fetchAll() {
        assertEquals(285 + 285, dao.fetchAll().count());
    }
}