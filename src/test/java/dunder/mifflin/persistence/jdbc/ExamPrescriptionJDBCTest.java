package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.ExamPrescriptionDAO;
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
        assertEquals(23L, store.concerns());
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

        Assertions.assertThrows(DAOException.class, () -> dao.insert(1L, 0L), "not existing exam");

        Assertions.assertThrows(DataAccessException.class, () -> dao.insert(0L, 134L), "not existing person");
    }

    @Test
    void concerns() {
        Assertions.assertEquals(15, dao.concerns(2L, "").count());
        Assertions.assertEquals(2, dao.concerns(2L, "B").count());
        Assertions.assertEquals(0, dao.concerns(2L, "X").count());
    }

    @Test
    void prescribedBy() {
        Assertions.assertEquals(135, dao.prescribedBy(8L).count());
        Assertions.assertEquals(145, dao.prescribedBy(39L).count());
        Assertions.assertEquals(0, dao.prescribedBy(1L).count(), "not general");
    }

    @Test
    void tookIn() {
        Assertions.assertEquals(263, dao.tookIn(10L).count());
        Assertions.assertEquals(418, dao.tookIn(11L).count());
        Assertions.assertEquals(0, dao.tookIn(1L).count());
    }

    @Test
    void count() {
        Assertions.assertEquals(333L + 348L, dao.count());
    }

    @Test
    void byKey() {
        dao.byKey(1280L).ifPresentOrElse(
                (prescription) -> {
                    assertEquals(1280L, prescription.id());
                    assertEquals(11L, prescription.place());
                    assertEquals(LocalDate.of(2017, 11, 18), prescription.date().toLocalDate());
                    assertEquals(1L, prescription.concerns());
                    assertEquals(153L, prescription.exam().id());
                    assertEquals("Creatinina", prescription.exam().name());
                    assertEquals("Info Creatinina", prescription.exam().info());
                },
                Assertions::fail
        );

        dao.byKey(1628L).ifPresentOrElse(
                (prescription) -> {
                    assertEquals(1628L, prescription.id());
                    assertEquals(11L, prescription.place());
                    assertEquals(LocalDate.of(2014, 9, 30), prescription.date().toLocalDate());
                    assertEquals(1L, prescription.concerns());
                    assertEquals(55L, prescription.exam().id());
                    assertEquals("Tipizzazione genomica HLA : DQB1 alta risoluzione", prescription.exam().name());
                    assertEquals("Info Tipizzazione genomica HLA : DQB1 alta risoluzione", prescription.exam().info());
                },
                Assertions::fail
        );

        Assertions.assertFalse(dao.byKey(487L).isPresent());
    }

    @Test
    void byKeys() {
        final var results = dao.byKeys(0L, 1280L, 1628L);

        assertFalse(results.containsKey(0L));

        Optional.ofNullable(results.get(1280L))
                .ifPresentOrElse(
                        (prescription) -> {
                            assertEquals(1280L, prescription.id());
                            assertEquals(11L, prescription.place());
                            assertEquals(LocalDate.of(2017, 11, 18), prescription.date().toLocalDate());
                            assertEquals(1L, prescription.concerns());
                            assertEquals(153L, prescription.exam().id());
                            assertEquals("Creatinina", prescription.exam().name());
                            assertEquals("Info Creatinina", prescription.exam().info());
                        },
                        Assertions::fail
                );

        Optional.ofNullable(results.get(1628L))
                .ifPresentOrElse(
                        (prescription) -> {
                            assertEquals(1628L, prescription.id());
                            assertEquals(11L, prescription.place());
                            assertEquals(LocalDate.of(2014, 9, 30), prescription.date().toLocalDate());
                            assertEquals(1L, prescription.concerns());
                            assertEquals(55L, prescription.exam().id());
                            assertEquals("Tipizzazione genomica HLA : DQB1 alta risoluzione", prescription.exam().name());
                            assertEquals("Info Tipizzazione genomica HLA : DQB1 alta risoluzione", prescription.exam().info());
                        },
                        Assertions::fail
                );
    }

    @Test
    void fetchAll() {
        Assertions.assertEquals(333L + 348L, dao.fetchAll().count());
    }
}