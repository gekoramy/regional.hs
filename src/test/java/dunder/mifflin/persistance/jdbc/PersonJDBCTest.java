package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.PersonDAO;
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
import static org.junit.jupiter.api.Assertions.assertFalse;

class PersonJDBCTest {

    private static Connection conn;
    private static DSLContext create;
    private static PersonDAO dao;

    @BeforeAll
    static void open() throws SQLException {
        conn = DriverManager.getConnection(
                Database.URL,
                Database.USERNAME,
                Database.PASSWORD
        );
        create = DSL.using(conn, SQLDialect.POSTGRES);
        dao = new PersonJDBC(create);
    }

    @AfterAll
    static void close() throws SQLException {
        conn.close();
        create.close();
    }

    @Test
    void by() {
        dao.by("arianna.bonetti@dominio.com").ifPresentOrElse(
                (person) -> {
                    assertEquals(99L, person.id());
                    assertEquals("Arianna", person.name());
                    assertEquals("Bonetti", person.surname());
                    assertEquals("arianna.bonetti@dominio.com", person.email());
                    assertEquals(LocalDate.of(1966, 8, 8), person.birthday());
                    assertEquals(908L, person.birthplace());
                    assertEquals("BNTRNN66M48B165D", person.fc());
                    assertEquals(false, person.gender());
                    assertEquals(946L, person.residence());
                },
                Assertions::fail
        );

        assertFalse(dao.by("fake").isPresent());
    }

    @Test
    void qualifiedFor() {
        assertEquals(2, dao.qualifiedFor(134L).count());
        assertEquals(2, dao.qualifiedFor(1L).count());
        assertEquals(0, dao.qualifiedFor(0L).count());
    }

    @Test
    void patients() {
        assertEquals(15, dao.patients(99L).count());
    }

    @Test
    void residence() {
        assertEquals(88, dao.residence(10L).count());
        assertEquals(169, dao.residence(11L).count());
        assertEquals(0, dao.residence(1L).count());
    }

    @Test
    void count() {
        assertEquals(257, dao.count());
    }

    @Test
    void byKey() {
        dao.byKey(99L).ifPresentOrElse(
                (person) -> {
                    assertEquals(99L, person.id());
                    assertEquals("Arianna", person.name());
                    assertEquals("Bonetti", person.surname());
                    assertEquals("arianna.bonetti@dominio.com", person.email());
                    assertEquals(LocalDate.of(1966, 8, 8), person.birthday());
                    assertEquals(908L, person.birthplace());
                    assertEquals("BNTRNN66M48B165D", person.fc());
                    assertEquals(false, person.gender());
                    assertEquals(946L, person.residence());
                },
                Assertions::fail
        );

        assertFalse(dao.byKey(0L).isPresent());
    }

    @Test
    void fetchAll() {
        assertEquals(257, dao.fetchAll().count());
    }
}