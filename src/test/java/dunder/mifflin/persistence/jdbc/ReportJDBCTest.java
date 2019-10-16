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
        final var store = dao.insert(450L, 169L, "note");

        assertEquals(450L, store.prescription());
        assertEquals(LocalDate.now(), store.date().toLocalDate());
        assertEquals(169L, store.responsible());
        assertEquals("note", store.note());

        dao.byKey(store.prescription()).ifPresentOrElse(
                (report) -> {
                    assertEquals(store.prescription(), report.prescription());
                    assertEquals(store.date(), report.date());
                    assertEquals(store.responsible(), report.responsible());
                    assertEquals(store.note(), report.note());
                },
                Assertions::fail
        );

        dao.remove(store.prescription()).ifPresentOrElse(
                (report) -> {
                    assertEquals(store.prescription(), report.prescription());
                    assertEquals(store.date(), report.date());
                    assertEquals(store.responsible(), report.responsible());
                    assertEquals(store.note(), report.note());
                },
                Assertions::fail
        );

        Assertions.assertFalse(dao.byKey(store.prescription()).isPresent());

        Assertions.assertThrows(DAOException.class, () -> dao.insert(0L, 1L, "note"), "not existing prescription");

        Assertions.assertThrows(DAOException.class, () -> dao.insert(1L, 0L, "note"), "not existing responsible");

        Assertions.assertThrows(DAOException.class, () -> dao.insert(450L, 116L, "note"), "specialist cannot report health service exam");

        Assertions.assertThrows(DAOException.class, () -> dao.insert(1L, 169L, "note"), "health service doctor cannot report specialist exam");

        Assertions.assertThrows(DataAccessException.class, () -> dao.insert(382L, 169L, "note"), "already reported exam");
    }

    @Test
    void count() {
        assertEquals(200 + 100, dao.count());
    }

    @Test
    void byKey() {
        dao.byKey(104L).ifPresentOrElse(
                (report) -> {
                    assertEquals(104L, report.prescription());
                    assertEquals(190L, report.responsible());
                    assertEquals(LocalDate.of(2012, 9, 2), report.date().toLocalDate());
                    assertEquals("Result of Aspartato aminotrasferiasi", report.note());
                },
                Assertions::fail
        );

        assertFalse(dao.byKey(0L).isPresent(), "not existing prescription");

        assertFalse(dao.byKey(1L).isPresent(), "not medicine prescription");
    }

    @Test
    void byKeys() {
        final var results = dao.byKeys(0L, 1L, 104L);

        assertFalse(results.containsKey(0L));

        assertFalse(results.containsKey(1L));

        Optional.ofNullable(results.get(104L))
                .ifPresentOrElse(
                        (report) -> {
                            assertEquals(104L, report.prescription());
                            assertEquals(190L, report.responsible());
                            assertEquals(LocalDate.of(2012, 9, 2), report.date().toLocalDate());
                            assertEquals("Result of Aspartato aminotrasferiasi", report.note());
                        },
                        Assertions::fail
                );
    }

    @Test
    void fetchAll() {
        assertEquals(200 + 100, dao.fetchAll().count());
    }
}