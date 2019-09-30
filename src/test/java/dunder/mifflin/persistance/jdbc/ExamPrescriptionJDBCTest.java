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

import static org.junit.jupiter.api.Assertions.assertEquals;

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
        assertEquals(1L, store.exam());

        dao.byKey(store.id()).ifPresentOrElse(
                (prescription) -> {
                    assertEquals(store.id(), prescription.id());
                    assertEquals(store.place(), prescription.place());
                    assertEquals(store.date(), prescription.date());
                    assertEquals(store.concerns(), prescription.concerns());
                    assertEquals(store.exam(), prescription.exam());
                },
                Assertions::fail
        );

        dao.remove(store.id()).ifPresentOrElse(
                (prescription) -> {
                    assertEquals(store.id(), prescription.id());
                    assertEquals(store.place(), prescription.place());
                    assertEquals(store.date(), prescription.date());
                    assertEquals(store.concerns(), prescription.concerns());
                    assertEquals(store.exam(), prescription.exam());
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
                    assertEquals(144, prescription.exam());
                },
                Assertions::fail
        );

        dao.byKey(301L).ifPresentOrElse(
                (prescription) -> {
                    assertEquals(301L, prescription.id());
                    assertEquals(10L, prescription.place());
                    assertEquals(LocalDate.of(2016, 2, 14), prescription.date().toLocalDate());
                    assertEquals(64, prescription.concerns());
                    assertEquals(122, prescription.exam());
                },
                Assertions::fail
        );

        Assertions.assertFalse(dao.byKey(487L).isPresent());
    }

    @Test
    void fetchAll() {
        Assertions.assertEquals(150L + 300L, dao.fetchAll().count());
    }
}