package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.GeneralDAO;
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

class GeneralJDBCTest {

    private static Connection conn;
    private static DSLContext create;
    private static GeneralDAO dao;

    @BeforeAll
    static void open() throws SQLException {
        conn = DriverManager.getConnection(
                Database.URL,
                Database.USERNAME,
                Database.PASSWORD
        );
        create = DSL.using(conn, SQLDialect.POSTGRES);
        dao = new GeneralJDBC(create);
    }

    @AfterAll
    static void close() throws SQLException {
        conn.close();
        create.close();
    }

    @Test
    void byPatient() {
        dao.by(33L).ifPresentOrElse(
                (general) -> {
                    assertEquals(99L, general.id());
                    assertEquals("Arianna", general.name());
                    assertEquals("Bonetti", general.surname());
                    assertEquals("arianna.bonetti@dominio.com", general.email());
                    assertEquals("$2a$10$.gNhlbOp8If4MEgnZapIg.2PqHPKS1LB0LeIddTUrOpB//5XxGgUO", general.password());
                    assertEquals(LocalDate.of(1966, 8, 8), general.birthday());
                    assertEquals(908L, general.birthplace());
                    assertEquals("BNTRNN66M48B165D", general.fc());
                    assertEquals(false, general.gender());
                    assertEquals(946L, general.residence());
                },
                Assertions::fail
        );

        Assertions.assertFalse(dao.by(1L).isPresent());
    }

    @Test
    void count() {
        assertEquals(5, dao.count());
    }

    @Test
    void byKey() {
        dao.byKey(99L).ifPresentOrElse(
                (general) -> {
                    assertEquals(99L, general.id());
                    assertEquals("Arianna", general.name());
                    assertEquals("Bonetti", general.surname());
                    assertEquals("arianna.bonetti@dominio.com", general.email());
                    assertEquals("$2a$10$.gNhlbOp8If4MEgnZapIg.2PqHPKS1LB0LeIddTUrOpB//5XxGgUO", general.password());
                    assertEquals(LocalDate.of(1966, 8, 8), general.birthday());
                    assertEquals(908L, general.birthplace());
                    assertEquals("BNTRNN66M48B165D", general.fc());
                    assertEquals(false, general.gender());
                    assertEquals(946L, general.residence());
                    assertEquals(11, general.workplace());
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