package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.MedicinePrescriptionDAO;
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
import java.time.LocalDate;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;

class MedicinePrescriptionJDBCTest {

    private static Connection conn;
    private static DSLContext create;
    private static MedicinePrescriptionDAO dao;

    @BeforeAll
    static void open() throws SQLException {
        conn = DriverManager.getConnection(
                Database.URL,
                Database.USERNAME,
                Database.PASSWORD
        );
        create = DSL.using(conn, SQLDialect.POSTGRES);
        dao = new MedicinePrescriptionJDBC(create);
    }

    @AfterAll
    static void close() throws SQLException {
        conn.close();
        create.close();
    }

    @Test
    void testStoreRemove() {
        final var store = dao.insert(2L, 1L, 3);

        assertEquals(11L, store.place());
        assertEquals(LocalDate.now(), store.date().toLocalDate());
        assertEquals(6L, store.concerns());
        assertEquals(1L, store.medicine().id());
        assertEquals("Abacavir Sulfate", store.medicine().name());
        assertEquals("Info Abacavir Sulfate", store.medicine().info());
        assertEquals(3, store.quantity());

        dao.byKey(store.id()).ifPresentOrElse(
                (prescription) -> {
                    assertEquals(store.id(), prescription.id());
                    assertEquals(store.place(), prescription.place());
                    assertEquals(store.date(), prescription.date());
                    assertEquals(store.concerns(), prescription.concerns());
                    assertEquals(store.medicine().id(), prescription.medicine().id());
                    assertEquals(store.medicine().name(), prescription.medicine().name());
                    assertEquals(store.medicine().info(), prescription.medicine().info());
                    assertEquals(store.quantity(), prescription.quantity());
                },
                Assertions::fail
        );

        dao.remove(store.id()).ifPresentOrElse(
                (prescription) -> {
                    assertEquals(store.id(), prescription.id());
                    assertEquals(store.place(), prescription.place());
                    assertEquals(store.date(), prescription.date());
                    assertEquals(store.medicine().id(), prescription.medicine().id());
                    assertEquals(store.medicine().name(), prescription.medicine().name());
                    assertEquals(store.medicine().info(), prescription.medicine().info());
                    assertEquals(store.quantity(), prescription.quantity());
                },
                Assertions::fail
        );

        Assertions.assertFalse(dao.byKey(store.id()).isPresent());

        Assertions.assertThrows(IllegalArgumentException.class, () -> dao.insert(1L, 0L, 1), "not existing medicine");

        Assertions.assertThrows(DataAccessException.class, () -> dao.insert(0L, 1L, 1), "not existing person");

        Assertions.assertThrows(DataAccessException.class, () -> dao.insert(1L, 1L, 1), "person with no general");
    }

    @Test
    void concerns() {
        Assertions.assertEquals(2L, dao.concerns(2L).count());
    }

    @Test
    void count() {
        Assertions.assertEquals(150L, dao.count());
    }

    @Test
    void byKey() {
        dao.byKey(600L).ifPresentOrElse(
                (prescription) -> {
                    assertEquals(600L, prescription.id());
                    assertEquals(11L, prescription.place());
                    assertEquals(LocalDate.of(2013, 4, 11), prescription.date().toLocalDate());
                    assertEquals(12L, prescription.concerns());
                    assertEquals(653L, prescription.medicine().id());
                    assertEquals("Omnaris", prescription.medicine().name());
                    assertEquals("Info Omnaris", prescription.medicine().info());
                    assertEquals(2, prescription.quantity());
                },
                Assertions::fail
        );

        Assertions.assertFalse(dao.byKey(1L).isPresent());
    }

    @Test
    void byKeys() {
        final var results = dao.byKeys(1L, 600L);

        assertFalse(results.containsKey(1L));

        Optional.ofNullable(results.get(600L))
                .ifPresentOrElse(
                        (prescription) -> {
                            assertEquals(600L, prescription.id());
                            assertEquals(11L, prescription.place());
                            assertEquals(LocalDate.of(2013, 4, 11), prescription.date().toLocalDate());
                            assertEquals(12L, prescription.concerns());
                            assertEquals(653L, prescription.medicine().id());
                            assertEquals("Omnaris", prescription.medicine().name());
                            assertEquals("Info Omnaris", prescription.medicine().info());
                            assertEquals(2, prescription.quantity());
                        },
                        Assertions::fail
                );
    }

    @Test
    void fetchAll() {
        Assertions.assertEquals(150L, dao.fetchAll().count());
    }
}