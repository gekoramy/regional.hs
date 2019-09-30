package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.MedicineDAO;
import dunder.mifflin.persistance.jdbc.config.Database;
import org.jooq.DSLContext;
import org.jooq.SQLDialect;
import org.jooq.impl.DSL;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import static org.junit.jupiter.api.Assertions.assertEquals;

class MedicineJDBCTest {

    private static Connection conn;
    private static DSLContext create;
    private static MedicineDAO dao;

    @BeforeAll
    static void open() throws SQLException {
        conn = DriverManager.getConnection(
                Database.URL,
                Database.USERNAME,
                Database.PASSWORD
        );
        create = DSL.using(conn, SQLDialect.POSTGRES);
        dao = new MedicineJDBC(create);
    }

    @AfterAll
    static void close() throws SQLException {
        conn.close();
        create.close();
    }

    @Test
    void count() {
        assertEquals(1000, dao.count());
    }

    @Test
    void byKey() {
        dao.byKey(963L).ifPresentOrElse(
                (medicine) -> {
                    assertEquals(963L, medicine.id());
                    assertEquals("Vimpat", medicine.name());
                    assertEquals("Info Vimpat", medicine.info());
                },
                Assertions::fail
        );

        Assertions.assertFalse(dao.byKey(0L).isPresent());
    }

    @Test
    void fetchAll() {
        assertEquals(1000, dao.fetchAll().count());
    }
}