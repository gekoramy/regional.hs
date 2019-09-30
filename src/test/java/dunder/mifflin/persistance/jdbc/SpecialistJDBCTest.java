package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.SpecialistDAO;
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

class SpecialistJDBCTest {

    private static Connection conn;
    private static DSLContext create;
    private static SpecialistDAO dao;

    @BeforeAll
    static void open() throws SQLException {
        conn = DriverManager.getConnection(
                Database.URL,
                Database.USERNAME,
                Database.PASSWORD
        );
        create = DSL.using(conn, SQLDialect.POSTGRES);
        dao = new SpecialistJDBC(create);
    }

    @AfterAll
    static void close() throws SQLException {
        conn.close();
        create.close();
    }

    @Test
    void count() {
        assertEquals(5, dao.count());
    }

    @Test
    void byKey() {
        dao.byKey(116L).ifPresentOrElse(
                (specialist) -> {
                    assertEquals(116L, specialist.id());
                    assertEquals("Marcello", specialist.name());
                    assertEquals("Orlando", specialist.surname());
                    assertEquals("marcello.orlando@dominio.com", specialist.email());
                    assertEquals("$2a$10$0uHa.w6kYtNpV5MaCOwz8Ov5nOHQeSIItsXdXSN1X4ITfnqg9wPRa", specialist.password());
                    assertEquals(LocalDate.of(1973, 6, 10), specialist.birthday());
                    assertEquals(244L, specialist.birthplace());
                    assertEquals("RLNMCL73H10E554H", specialist.fc());
                    assertEquals(true, specialist.gender());
                    assertEquals(950L, specialist.residence());
                },
                Assertions::fail
        );

        Assertions.assertFalse(dao.byKey(1L).isPresent());
    }

    @Test
    void fetchAll() {
        assertEquals(5, dao.fetchAll().count());
    }
}