package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.MedicineTicketDAO;
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

class MedicineTicketJDBCTest {

    private static Connection conn;
    private static DSLContext create;
    private static MedicineTicketDAO dao;

    @BeforeAll
    static void open() throws SQLException {
        conn = DriverManager.getConnection(
                Database.URL,
                Database.USERNAME,
                Database.PASSWORD
        );
        create = DSL.using(conn, SQLDialect.POSTGRES);
        dao = new MedicineTicketJDBC(create);
    }

    @AfterAll
    static void close() throws SQLException {
        conn.close();
        create.close();
    }

    @Test
    void testStoreRemove() {
        final var store = dao.insert(1251, BigDecimal.valueOf(20));

        assertEquals(1251L, store.prescription());
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

        Assertions.assertThrows(DataAccessException.class, () -> dao.insert(1280L, BigDecimal.valueOf(20)), "not a medicine prescription");

        Assertions.assertThrows(DataAccessException.class, () -> dao.insert(1L, BigDecimal.valueOf(20)), "already payed prescription");
    }

    @Test
    void count() {
        assertEquals(1250, dao.count());
    }

    @Test
    void byKey() {
        dao.byKey(104L).ifPresentOrElse(
                (ticket) -> {
                    assertEquals(104L, ticket.prescription());
                    assertEquals(LocalDate.of(2015, 7, 23), ticket.date().toLocalDate());
                    assertEquals(BigDecimal.valueOf(300, 2), ticket.amount());
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
                            assertEquals(LocalDate.of(2015, 7, 23), ticket.date().toLocalDate());
                            assertEquals(BigDecimal.valueOf(300, 2), ticket.amount());
                        },
                        Assertions::fail
                );
    }

    @Test
    void fetchAll() {
        assertEquals(1250, dao.fetchAll().count());
    }

}
