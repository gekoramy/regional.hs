package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.MedicinePrescriptionDAO;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
import dunder.mifflin.persistence.jdbc.config.Database;
import dunder.mifflin.utils.Limits;
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
        assertEquals(23L, store.concerns());
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

        Assertions.assertThrows(DAOException.class, () -> dao.insert(1L, 0L, 1), "not existing medicine");

        Assertions.assertThrows(DataAccessException.class, () -> dao.insert(0L, 1L, 1), "not existing person");
    }

    @Test
    void concerns() {
        Assertions.assertEquals(27, dao.concerns(2L).count());
    }

    @Test
    void concernsAfter() {
        Assertions.assertEquals(27, dao.concernsAfter(2L, Limits.MIN, 30).count());
        Assertions.assertEquals(5, dao.concernsAfter(2L, Limits.MIN, 5).count());
        Assertions.assertEquals(0, dao.concernsAfter(2L, Limits.MAX, 5).count());
    }

    @Test
    void concernsBefore() {
        Assertions.assertEquals(27, dao.concernsBefore(2L, Limits.MAX, 30).count());
        Assertions.assertEquals(5, dao.concernsBefore(2L, Limits.MAX, 5).count());
        Assertions.assertEquals(0, dao.concernsBefore(2L, Limits.MIN, 5).count());
    }

    @Test
    void tookIn() {
        Assertions.assertEquals(0, dao.tookIn(1L).count());
        Assertions.assertEquals(494, dao.tookIn(10L).count());
        Assertions.assertEquals(785, dao.tookIn(11L).count());
    }

    @Test
    void count() {
        Assertions.assertEquals(494 + 785, dao.count());
    }

    @Test
    void byKey() {
        dao.byKey(1L).ifPresentOrElse(
                (prescription) -> {
                    assertEquals(1L, prescription.id());
                    assertEquals(10L, prescription.place());
                    assertEquals(LocalDate.of(2017, 2, 13), prescription.date().toLocalDate());
                    assertEquals(33L, prescription.concerns());
                    assertEquals(510L, prescription.medicine().id());
                    assertEquals("Lipofen", prescription.medicine().name());
                    assertEquals("Info Lipofen", prescription.medicine().info());
                    assertEquals(3, prescription.quantity());
                },
                Assertions::fail
        );

        Assertions.assertFalse(dao.byKey(1280L).isPresent());
    }

    @Test
    void byKeys() {
        final var results = dao.byKeys(new Long[]{0L, 1L, 1280L});

        assertFalse(results.containsKey(0L));

        assertFalse(results.containsKey(1280L));

        Optional.ofNullable(results.get(1L))
                .ifPresentOrElse(
                        (prescription) -> {
                            assertEquals(1L, prescription.id());
                            assertEquals(10L, prescription.place());
                            assertEquals(LocalDate.of(2017, 2, 13), prescription.date().toLocalDate());
                            assertEquals(33L, prescription.concerns());
                            assertEquals(510L, prescription.medicine().id());
                            assertEquals("Lipofen", prescription.medicine().name());
                            assertEquals("Info Lipofen", prescription.medicine().info());
                            assertEquals(3, prescription.quantity());
                        },
                        Assertions::fail
                );
    }

    @Test
    void fetchAll() {
        Assertions.assertEquals(494 + 785, dao.fetchAll().count());
    }
}