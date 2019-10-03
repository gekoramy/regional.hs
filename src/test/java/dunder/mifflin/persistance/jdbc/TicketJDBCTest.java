package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.TicketDAO;
import dunder.mifflin.persistance.jdbc.config.Database;
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

class TicketJDBCTest {

    private static Connection conn;
    private static DSLContext create;
    private static TicketDAO dao;

    @BeforeAll
    static void open() throws SQLException {
        conn = DriverManager.getConnection(
                Database.URL,
                Database.USERNAME,
                Database.PASSWORD
        );
        create = DSL.using(conn, SQLDialect.POSTGRES);
        dao = new TicketJDBC(create);
    }

    @AfterAll
    static void close() throws SQLException {
        conn.close();
        create.close();
    }

    @Test
    void testStoreRemove() {
        final var store = dao.insert(591L, BigDecimal.valueOf(20));

        assertEquals(591L, store.prescription());
        assertEquals(LocalDate.now(), store.date().toLocalDate());
        assertEquals(BigDecimal.valueOf(2000, 2), store.amount());

        dao.byKey(store.prescription()).ifPresentOrElse(
                (ticket) -> {
                    assertEquals(store.prescription(), ticket.prescription());
                    assertEquals(store.date(), ticket.date());
                    assertEquals(store.amount(), ticket.amount());
                },
                Assertions::fail
        );

        dao.remove(store.prescription()).ifPresentOrElse(
                (ticket) -> {
                    assertEquals(store.prescription(), ticket.prescription());
                    assertEquals(store.date(), ticket.date());
                    assertEquals(store.amount(), ticket.amount());
                },
                Assertions::fail
        );

        Assertions.assertFalse(dao.byKey(store.prescription()).isPresent());

        Assertions.assertThrows(DataAccessException.class, () -> dao.insert(0L, BigDecimal.valueOf(20)), "not existing prescription");

        Assertions.assertThrows(DataAccessException.class, () -> dao.insert(1L, BigDecimal.valueOf(20)), "already payed prescription");
    }

    @Test
    void count() {
        assertEquals(450, dao.count());
    }

    @Test
    void byKey() {
        dao.byKey(104L).ifPresentOrElse(
                (ticket) -> {
                    assertEquals(104L, ticket.prescription());
                    assertEquals(LocalDate.of(2012, 8, 31), ticket.date().toLocalDate());
                    assertEquals(BigDecimal.valueOf(5000, 2), ticket.amount());
                },
                Assertions::fail
        );

        Assertions.assertFalse(dao.byKey(0L).isPresent());
    }

    @Test
    void byKeys() {
        final var results = dao.byKeys(0L, 104L);

        assertFalse(results.containsKey(0L));

        Optional.ofNullable(results.get(104L))
                .ifPresentOrElse(
                        (ticket) -> {
                            assertEquals(104L, ticket.prescription());
                            assertEquals(LocalDate.of(2012, 8, 31), ticket.date().toLocalDate());
                            assertEquals(BigDecimal.valueOf(5000, 2), ticket.amount());
                        },
                        Assertions::fail
                );
    }

    @Test
    void fetchAll() {
        assertEquals(450, dao.fetchAll().count());
    }
}