package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.HsAdminDAO;
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
import java.time.LocalDate;

import static org.junit.jupiter.api.Assertions.assertEquals;

class HsAdminJDBCTest {

    private static Connection conn;
    private static DSLContext create;
    private static HsAdminDAO dao;

    @BeforeAll
    static void open() throws SQLException {
        conn = DriverManager.getConnection(
                Database.URL,
                Database.USERNAME,
                Database.PASSWORD
        );
        create = DSL.using(conn, SQLDialect.POSTGRES);
        dao = new HsAdminJDBC(create);
    }

    @AfterAll
    static void close() throws SQLException {
        conn.close();
        create.close();
    }

    @Test
    void count() {
        assertEquals(2, dao.count());
    }

    @Test
    void byKey() {
        dao.byKey(79L).ifPresentOrElse(
                (admin) -> {
                    assertEquals(79L, admin.id());
                    assertEquals("Sergio", admin.name());
                    assertEquals("Colombo", admin.surname());
                    assertEquals("sergio.colombo@dominio.com", admin.email());
                    assertEquals("$2a$10$1tcV42fdKtsHllYIrhuPDujLJnZHxwKn/V3VYC25/RPxnj19fQ1Da", admin.password());
                    assertEquals(LocalDate.of(1968, 3, 26), admin.birthday());
                    assertEquals(394L, admin.birthplace());
                    assertEquals("CLMSRG68C26A023R", admin.fc());
                    assertEquals(true, admin.gender());
                    assertEquals(1033L, admin.residence());
                },
                Assertions::fail
        );

        Assertions.assertFalse(dao.byKey(1L).isPresent());
    }

    @Test
    void fetchAll() {
        assertEquals(2, dao.fetchAll().count());
    }
}