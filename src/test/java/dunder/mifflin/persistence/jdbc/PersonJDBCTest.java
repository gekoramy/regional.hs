package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.PersonDAO;
import dunder.mifflin.persistence.jdbc.config.Database;
import dunder.mifflin.persistence.pojos.Person;
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
import java.util.List;
import java.util.Map;
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
        dao.by("marco.coppola@dominio.com").ifPresentOrElse(
                (person) -> {
                    assertEquals(3L, person.id());
                    assertEquals("Marco", person.name());
                    assertEquals("Coppola", person.surname());
                    assertEquals("marco.coppola@dominio.com", person.email());
                    assertEquals(LocalDate.of(1935, 12, 6), person.birthday());
                    assertEquals(606L, person.birthplace());
                    assertEquals("CPPMRC35T06G780O", person.fc());
                    assertEquals(true, person.gender());
                    assertEquals(981L, person.residence());
                },
                Assertions::fail
        );

        assertFalse(dao.by("fake").isPresent());
    }

    @Test
    void contains() {
        assertEquals(50, dao.contains("", "", "").count());
        assertEquals(2, dao.contains("Mario", "", "").count());
        assertEquals(2, dao.contains("", "", "DVD").count());
        assertEquals(1, dao.contains("", "Bonetti", "").count());
        assertEquals(0, dao.contains("X", "", "").count());
    }

    @Test
    void qualifiedFor() {
        final Map<Long, List<Person>> qualified = dao.qualifiedFor(0L, 1L, 134L, 135L);

        assertFalse(qualified.containsKey(0L));

        Optional.ofNullable(qualified.get(1L)).map(List::size).ifPresentOrElse(
                (size) -> assertEquals(2, size),
                Assertions::fail
        );

        Optional.ofNullable(qualified.get(134L)).map(List::size).ifPresentOrElse(
                (size) -> assertEquals(2, size),
                Assertions::fail
        );

        Optional.ofNullable(qualified.get(135L)).map(List::size).ifPresentOrElse(
                (size) -> assertEquals(1, size),
                Assertions::fail
        );
    }

    @Test
    void patients() {
        assertEquals(10, dao.patients(39L, "", "", "").count());
        assertEquals(10, dao.patients(39L, "", "@", "").count());
        assertEquals(1, dao.patients(39L, "Davide", "", "").count());
        assertEquals(1, dao.patients(39L, "", "", "DVD").count());
        assertEquals(0, dao.patients(39L, "", "marco", "").count());
    }

    @Test
    void residence() {
        assertEquals(20, dao.residence(10L).count());
        assertEquals(30, dao.residence(11L).count());
        assertEquals(0, dao.residence(1L).count());
    }

    @Test
    void patient() {
        dao.patient(11L).ifPresentOrElse(
                (person) -> {
                    assertEquals(3L, person.id());
                    assertEquals("Marco", person.name());
                    assertEquals("Coppola", person.surname());
                    assertEquals("marco.coppola@dominio.com", person.email());
                    assertEquals(LocalDate.of(1935, 12, 6), person.birthday());
                    assertEquals(606L, person.birthplace());
                    assertEquals("CPPMRC35T06G780O", person.fc());
                    assertEquals(true, person.gender());
                    assertEquals(981L, person.residence());
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
        assertEquals(50, dao.count());
    }

    @Test
    void byKey() {
        dao.byKey(3L).ifPresentOrElse(
                (person) -> {
                    assertEquals(3L, person.id());
                    assertEquals("Marco", person.name());
                    assertEquals("Coppola", person.surname());
                    assertEquals("marco.coppola@dominio.com", person.email());
                    assertEquals(LocalDate.of(1935, 12, 6), person.birthday());
                    assertEquals(606L, person.birthplace());
                    assertEquals("CPPMRC35T06G780O", person.fc());
                    assertEquals(true, person.gender());
                    assertEquals(981L, person.residence());
                },
                Assertions::fail
        );

        assertFalse(dao.byKey(0L).isPresent());
    }

    @Test
    void byKeys() {
        final var results = dao.byKeys(0L, 3L);

        assertFalse(results.containsKey(0L));

        Optional.ofNullable(results.get(3L))
                .ifPresentOrElse(
                        (person) -> {
                            assertEquals(3L, person.id());
                            assertEquals("Marco", person.name());
                            assertEquals("Coppola", person.surname());
                            assertEquals("marco.coppola@dominio.com", person.email());
                            assertEquals(LocalDate.of(1935, 12, 6), person.birthday());
                            assertEquals(606L, person.birthplace());
                            assertEquals("CPPMRC35T06G780O", person.fc());
                            assertEquals(true, person.gender());
                            assertEquals(981L, person.residence());
                        },
                        Assertions::fail
                );
    }

    @Test
    void fetchAll() {
        assertEquals(50, dao.fetchAll().count());
    }
}