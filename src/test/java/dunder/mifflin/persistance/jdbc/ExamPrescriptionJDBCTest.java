package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.ExamPrescriptionDAO;
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

class ExamPrescriptionJDBCTest {

    private static Connection conn;
    private static DSLContext create;
    private static ExamPrescriptionDAO dao;

    @BeforeAll
    static void open() throws SQLException {
        conn = DriverManager.getConnection(
                Database.URL,
                Database.USERNAME,
                Database.PASSWORD
        );
        create = DSL.using(conn, SQLDialect.POSTGRES);
        dao = new ExamPrescriptionJDBC(create);
    }

    @AfterAll
    static void close() throws SQLException {
        conn.close();
        create.close();
    }

    @Test
    void testStoreRemove() {
        final var store = dao.insert(2L, 1L);

        assertEquals(11L, store.place());
        assertEquals(LocalDate.now(), store.date().toLocalDate());
        assertEquals(6L, store.concerns());
        assertEquals(1L, store.exam().id());
        assertEquals("Estrazione di dente deciduo", store.exam().name());
        assertEquals("Info Estrazione di dente deciduo (gratuita fino a 14 anni)", store.exam().info());

        dao.byKey(store.id()).ifPresentOrElse(
                (prescription) -> {
                    assertEquals(store.id(), prescription.id());
                    assertEquals(store.place(), prescription.place());
                    assertEquals(store.date(), prescription.date());
                    assertEquals(store.concerns(), prescription.concerns());
                    assertEquals(store.exam().id(), prescription.exam().id());
                    assertEquals(store.exam().name(), prescription.exam().name());
                    assertEquals(store.exam().info(), prescription.exam().info());
                },
                Assertions::fail
        );

        dao.remove(store.id()).ifPresentOrElse(
                (prescription) -> {
                    assertEquals(store.id(), prescription.id());
                    assertEquals(store.place(), prescription.place());
                    assertEquals(store.date(), prescription.date());
                    assertEquals(store.concerns(), prescription.concerns());
                    assertEquals(store.exam().id(), prescription.exam().id());
                    assertEquals(store.exam().name(), prescription.exam().name());
                    assertEquals(store.exam().info(), prescription.exam().info());
                },
                Assertions::fail
        );

        Assertions.assertFalse(dao.byKey(store.id()).isPresent());

        Assertions.assertThrows(IllegalArgumentException.class, () -> dao.insert(1L, 0L), "not existing exam");

        Assertions.assertThrows(DataAccessException.class, () -> dao.insert(0L, 134L), "not existing person");

        Assertions.assertThrows(DataAccessException.class, () -> dao.insert(1L, 134L), "person with no general");
    }

    @Test
    void concerns() {
        Assertions.assertEquals(6L, dao.concerns(2L).count());
    }

    @Test
    void prescribedBy() {
        Assertions.assertEquals(90L, dao.prescribedBy(22L).count());
    }

    @Test
    void tookIn() {
        Assertions.assertEquals(180L, dao.tookIn(10L).count());
    }

    @Test
    void count() {
        Assertions.assertEquals(150L + 300L, dao.count());
    }

    @Test
    void byKey() {
        dao.byKey(1L).ifPresentOrElse(
                (prescription) -> {
                    assertEquals(1L, prescription.id());
                    assertEquals(10L, prescription.place());
                    assertEquals(LocalDate.of(2018, 3, 8), prescription.date().toLocalDate());
                    assertEquals(64, prescription.concerns());
                    assertEquals(144L, prescription.exam().id());
                    assertEquals("Alfa amilasi", prescription.exam().name());
                    assertEquals("Info Alfa amilasi", prescription.exam().info());
                },
                Assertions::fail
        );

        dao.byKey(301L).ifPresentOrElse(
                (prescription) -> {
                    assertEquals(301L, prescription.id());
                    assertEquals(10L, prescription.place());
                    assertEquals(LocalDate.of(2016, 2, 14), prescription.date().toLocalDate());
                    assertEquals(64, prescription.concerns());
                    assertEquals(122L, prescription.exam().id());
                    assertEquals("Esercizi respiratori per seduta individuale", prescription.exam().name());
                    assertEquals("Info Esercizi respiratori per seduta individuale", prescription.exam().info());
                },
                Assertions::fail
        );

        Assertions.assertFalse(dao.byKey(487L).isPresent());
    }

    @Test
    void byKeys() {
        final var results = dao.byKeys(0L, 1L, 301L);

        assertFalse(results.containsKey(0L));

        Optional.ofNullable(results.get(1L))
                .ifPresentOrElse(
                        (prescription) -> {
                            assertEquals(1L, prescription.id());
                            assertEquals(10L, prescription.place());
                            assertEquals(LocalDate.of(2018, 3, 8), prescription.date().toLocalDate());
                            assertEquals(64, prescription.concerns());
                            assertEquals(144L, prescription.exam().id());
                            assertEquals("Alfa amilasi", prescription.exam().name());
                            assertEquals("Info Alfa amilasi", prescription.exam().info());
                        },
                        Assertions::fail
                );

        Optional.ofNullable(results.get(301L))
                .ifPresentOrElse(
                        (prescription) -> {
                            assertEquals(301L, prescription.id());
                            assertEquals(10L, prescription.place());
                            assertEquals(LocalDate.of(2016, 2, 14), prescription.date().toLocalDate());
                            assertEquals(64, prescription.concerns());
                            assertEquals(122L, prescription.exam().id());
                            assertEquals("Esercizi respiratori per seduta individuale", prescription.exam().name());
                            assertEquals("Info Esercizi respiratori per seduta individuale", prescription.exam().info());
                        },
                        Assertions::fail
                );
    }

    @Test
    void fetchAll() {
        Assertions.assertEquals(150L + 300L, dao.fetchAll().count());
    }
}