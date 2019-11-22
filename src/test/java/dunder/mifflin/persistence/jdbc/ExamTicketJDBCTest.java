package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.ExamTicketDAO;
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

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;

class ExamTicketJDBCTest {

    private static Connection conn;
    private static DSLContext create;
    private static ExamTicketDAO dao;

    @BeforeAll
    static void open() throws SQLException {
        conn = DriverManager.getConnection(
                Database.URL,
                Database.USERNAME,
                Database.PASSWORD
        );
        create = DSL.using(conn, SQLDialect.POSTGRES);
        dao = new ExamTicketJDBC(create);
    }

    @AfterAll
    static void close() throws SQLException {
        conn.close();
        create.close();
    }

    @Test
    void testStoreRemove() {
        final var store = dao.insert(1283L, BigDecimal.valueOf(20), 37L);

        assertEquals(1283L, store.prescription());
        assertEquals(LocalDate.now(), store.date().toLocalDate());
        assertEquals(BigDecimal.valueOf(2000, 2), store.amount());
        assertEquals(37L, store.responsible());

        dao.byKey(store.prescription()).ifPresentOrElse(
                (ticket) -> {
                    assertEquals(store.prescription(), ticket.prescription());
                    assertEquals(store.date(), ticket.date());
                    assertEquals(store.amount(), ticket.amount());
                    assertEquals(store.responsible(), ticket.responsible());
                },
                Assertions::fail
        );

        dao.remove(store.prescription()).ifPresentOrElse(
                (ticket) -> {
                    assertEquals(store.prescription(), ticket.prescription());
                    assertEquals(store.date(), ticket.date());
                    assertEquals(store.amount(), ticket.amount());
                    assertEquals(store.responsible(), ticket.responsible());
                },
                Assertions::fail
        );

        Assertions.assertFalse(dao.byKey(store.prescription()).isPresent());

        Assertions.assertThrows(DataAccessException.class, () -> dao.insert(1281L, BigDecimal.valueOf(20), 37L), "already payed prescription");

        Assertions.assertThrows(DAOException.class, () -> dao.insert(0L, BigDecimal.valueOf(20), 1L), "not existing prescription");

        Assertions.assertThrows(DAOException.class, () -> dao.insert(1L, BigDecimal.valueOf(20), 0L), "not existing responsible");

        Assertions.assertThrows(DAOException.class, () -> dao.insert(1628L, BigDecimal.valueOf(20),26L), "specialist cannot be responsible for health service exam");

        Assertions.assertThrows(DAOException.class, () -> dao.insert(1283L, BigDecimal.valueOf(20),42L), "specialist not qualified");

        Assertions.assertThrows(DAOException.class, () -> dao.insert(1283L, BigDecimal.valueOf(20),10L), "health service doctor cannot be responsible for specialist exam");

        Assertions.assertThrows(DAOException.class, () -> dao.insert(1484L, BigDecimal.valueOf(20),26L), "the patient cannot be responsible for himself");
    }

    @Test
    void count() {
        assertEquals(580, dao.count());
    }

    @Test
    void byKey() {
        dao.byKey(1281L).ifPresentOrElse(
                (ticket) -> {
                    assertEquals(1281L, ticket.prescription());
                    assertEquals(LocalDate.of(2017, 1, 14), ticket.date().toLocalDate());
                    assertEquals(BigDecimal.valueOf(5000, 2), ticket.amount());
                    assertEquals(37L, ticket.responsible());
                },
                Assertions::fail
        );

        Assertions.assertFalse(dao.byKey(1283L).isPresent());
    }

    @Test
    void byKeys() {
        final var results = dao.byKeys(new Long[]{1L, 1281L, 1283L});

        assertFalse(results.containsKey(1L));

        assertFalse(results.containsKey(1283L));

        Optional.ofNullable(results.get(1281L))
                .ifPresentOrElse(
                        (ticket) -> {
                            assertEquals(1281L, ticket.prescription());
                            assertEquals(LocalDate.of(2017, 1, 14), ticket.date().toLocalDate());
                            assertEquals(BigDecimal.valueOf(5000, 2), ticket.amount());
                            assertEquals(37L, ticket.responsible());
                        },
                        Assertions::fail
                );
    }

    @Test
    void fetchAll() {
        assertEquals(580, dao.fetchAll().count());
    }
}