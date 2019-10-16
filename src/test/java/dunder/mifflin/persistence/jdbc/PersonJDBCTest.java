package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.PersonDAO;
import dunder.mifflin.persistence.jdbc.config.Database;
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
import java.util.Optional;

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
    void contains() {
        assertEquals(257, dao.contains("", "", "").count());
        assertEquals(1, dao.contains("Mario", "", "").count());
        assertEquals(6, dao.contains("", "Bonetti", "").count());
        assertEquals(7, dao.contains("", "", "LCU").count());
        assertEquals(0, dao.contains("X", "", "").count());
    }

    @Test
    void qualifiedFor() {
        assertEquals(2, dao.qualifiedFor(134L).count());
        assertEquals(2, dao.qualifiedFor(1L).count());
        assertEquals(0, dao.qualifiedFor(0L).count());
    }

    @Test
    void patients() {
        assertEquals(15, dao.patients(99L, "", "", "").count());
        assertEquals(15, dao.patients(99L, "", "@", "").count());
        assertEquals(1, dao.patients(99L, "Giuliana", "", "").count());
        assertEquals(1, dao.patients(99L, "", "", "GLN").count());
        assertEquals(0, dao.patients(99L, "", "marco", "").count());
    }

    @Test
    void residence() {
        assertEquals(88, dao.residence(10L).count());
        assertEquals(169, dao.residence(11L).count());
        assertEquals(0, dao.residence(1L).count());
    }

    @Test
    void patient() {
        dao.patient(6L).ifPresentOrElse(
                (person) -> {
                    assertEquals(2L, person.id());
                    assertEquals("Gabriele", person.name());
                    assertEquals("Colombo", person.surname());
                    assertEquals("gabriele.colombo@dominio.com", person.email());
                    assertEquals(LocalDate.of(1992, 1, 22), person.birthday());
                    assertEquals(587L, person.birthplace());
                    assertEquals("CLMGRL92A22C217L", person.fc());
                    assertEquals(true, person.gender());
                    assertEquals(1064, person.residence());
                },
                Assertions::fail
        );

        assertFalse(dao.patient(0L).isPresent(), "not existing follows");
    }

    @Test
    void follows() {
        assertEquals(1, dao.patients(6L).size());
        assertEquals(1, dao.patients(0L, 6L).size());
        assertEquals(3, dao.patients(6L, 7L, 8L).size());
        assertEquals(0, dao.patients(0L).size(), "not existing follows");
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
    void byKeys() {
        final var results = dao.byKeys(0L, 99L);

        assertFalse(results.containsKey(0L));

        Optional.ofNullable(results.get(99L))
                .ifPresentOrElse(
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
    }

    @Test
    void fetchAll() {
        assertEquals(257, dao.fetchAll().count());
    }
}