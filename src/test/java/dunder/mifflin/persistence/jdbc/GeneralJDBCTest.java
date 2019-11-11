package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.GeneralDAO;
import dunder.mifflin.persistence.daos.PersonDAO;
import dunder.mifflin.persistence.daos.exceptions.DAOException;
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
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;

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
    void follows() {
        dao.follows(8L).ifPresentOrElse(
                (general) -> {
                    assertEquals(2L, general.id());
                    assertEquals("Sara", general.name());
                    assertEquals("Caruso", general.surname());
                    assertEquals("sara.caruso@dominio.com", general.email());
                    assertEquals(LocalDate.of(1979, 2, 1), general.birthday());
                    assertEquals(17L, general.birthplace());
                    assertEquals("CRSSRA79B41B674S", general.fc());
                    assertEquals(false, general.gender());
                    assertEquals(899L, general.residence());
                    assertEquals(11L, general.workplace());
                },
                Assertions::fail
        );

        Assertions.assertFalse(dao.follows(0L).isPresent());
    }

    @Test
    void suitable() {
        assertEquals(2, dao.suitable(1L, "", "", "").count());
        assertEquals(2, dao.suitable(1L, "", "@", "").count());
        assertEquals(1, dao.suitable(1L, "", "", "RSSR").count());
        assertEquals(0, dao.suitable(1L, "G", "", "").count());
    }

    @Test
    void testEntrustsPatientsUndo() {

        final PersonDAO person = new PersonJDBC(create);

        Assertions.assertTrue(
                person.patients(8L, "", "", "")
                        .map(Person::id)
                        .noneMatch(Long.valueOf(1L)::equals),
                String.format(
                        "%d should not be already following %d",
                        8L,
                        1L
                )
        );

        final var before = dao.follows(1L).orElseThrow();
        final var entrusts = dao.entrusts(1L, 8L);

        assertEquals(8L, entrusts.id());
        assertEquals("Mario", entrusts.name());
        assertEquals("Rossetti", entrusts.surname());
        assertEquals("mario.rossetti@dominio.com", entrusts.email());
        assertEquals(LocalDate.of(1969, 8, 6), entrusts.birthday());
        assertEquals(637L, entrusts.birthplace());
        assertEquals("RSSMRA69M06A346L", entrusts.fc());
        assertEquals(true, entrusts.gender());
        assertEquals(890L, entrusts.residence());
        assertEquals(11L, entrusts.workplace());

        Assertions.assertTrue(
                person.patients(8L, "", "", "")
                        .map(Person::id)
                        .anyMatch(Long.valueOf(1L)::equals),
                String.format(
                        "%d should not be already following %d",
                        8L,
                        1L
                )
        );

        dao.follows(1L).ifPresentOrElse(
                (general) -> {
                    assertEquals(entrusts.id(), general.id());
                    assertEquals(entrusts.name(), general.name());
                    assertEquals(entrusts.surname(), general.surname());
                    assertEquals(entrusts.email(), general.email());
                    assertEquals(entrusts.birthday(), general.birthday());
                    assertEquals(entrusts.birthplace(), general.birthplace());
                    assertEquals(entrusts.fc(), general.fc());
                    assertEquals(entrusts.gender(), general.gender());
                    assertEquals(entrusts.residence(), general.residence());
                    assertEquals(entrusts.workplace(), general.workplace());
                },
                Assertions::fail
        );

        dao.undo(1L).ifPresentOrElse(
                (general) -> {
                    assertEquals(entrusts.id(), general.id());
                    assertEquals(entrusts.name(), general.name());
                    assertEquals(entrusts.surname(), general.surname());
                    assertEquals(entrusts.email(), general.email());
                    assertEquals(entrusts.birthday(), general.birthday());
                    assertEquals(entrusts.birthplace(), general.birthplace());
                    assertEquals(entrusts.fc(), general.fc());
                    assertEquals(entrusts.gender(), general.gender());
                    assertEquals(entrusts.residence(), general.residence());
                    assertEquals(entrusts.workplace(), general.workplace());
                },
                Assertions::fail
        );

        Assertions.assertTrue(
                person.patients(8L, "", "", "")
                        .map(Person::id)
                        .noneMatch(Long.valueOf(1L)::equals),
                String.format(
                        "%d should not be already following %d",
                        8L,
                        1L
                )
        );

        dao.follows(1L).ifPresentOrElse(
                (general) -> {
                    assertEquals(before.id(), general.id());
                    assertEquals(before.name(), general.name());
                    assertEquals(before.surname(), general.surname());
                    assertEquals(before.email(), general.email());
                    assertEquals(before.birthday(), general.birthday());
                    assertEquals(before.birthplace(), general.birthplace());
                    assertEquals(before.fc(), general.fc());
                    assertEquals(before.gender(), general.gender());
                    assertEquals(before.residence(), general.residence());
                    assertEquals(before.workplace(), general.workplace());
                },
                Assertions::fail
        );

        assertThrows(DAOException.class, () -> dao.entrusts(1L, 13L), "already following");
        assertThrows(DAOException.class, () -> dao.entrusts(1L, 39L), "not suitable - different residence and workplace");
        assertThrows(DAOException.class, () -> dao.entrusts(1L, 3L), "not suitable - not a general");
        assertThrows(DAOException.class, () -> dao.entrusts(0L, 8L), "not existing patient");
    }

    @Test
    void general() {
        dao.general(8L).ifPresentOrElse(
                (general) -> {
                    assertEquals(8L, general.id());
                    assertEquals("Mario", general.name());
                    assertEquals("Rossetti", general.surname());
                    assertEquals("mario.rossetti@dominio.com", general.email());
                    assertEquals(LocalDate.of(1969, 8, 6), general.birthday());
                    assertEquals(637L, general.birthplace());
                    assertEquals("RSSMRA69M06A346L", general.fc());
                    assertEquals(true, general.gender());
                    assertEquals(890L, general.residence());
                    assertEquals(11L, general.workplace());
                },
                Assertions::fail
        );

        assertFalse(dao.general(0L).isPresent(), "not existing follows");
    }

    @Test
    void generals() {
        assertEquals(1, dao.generals(6L).size());
        assertEquals(1, dao.generals(0L, 6L).size());
        assertEquals(3, dao.generals(6L, 7L, 8L).size());
        assertEquals(0, dao.generals(0L).size(), "not existing follows");
    }

    @Test
    void count() {
        assertEquals(5, dao.count());
    }

    @Test
    void byKey() {
        dao.byKey(8L).ifPresentOrElse(
                (general) -> {
                    assertEquals(8L, general.id());
                    assertEquals("Mario", general.name());
                    assertEquals("Rossetti", general.surname());
                    assertEquals("mario.rossetti@dominio.com", general.email());
                    assertEquals(LocalDate.of(1969, 8, 6), general.birthday());
                    assertEquals(637L, general.birthplace());
                    assertEquals("RSSMRA69M06A346L", general.fc());
                    assertEquals(true, general.gender());
                    assertEquals(890L, general.residence());
                    assertEquals(11L, general.workplace());
                },
                Assertions::fail
        );

        Assertions.assertFalse(dao.byKey(1L).isPresent());
    }

    @Test
    void byKeys() {
        final var results = dao.byKeys(1L, 8L);

        assertFalse(results.containsKey(1L));

        Optional.ofNullable(results.get(8L))
                .ifPresentOrElse(
                        (general) -> {
                            assertEquals(8L, general.id());
                            assertEquals("Mario", general.name());
                            assertEquals("Rossetti", general.surname());
                            assertEquals("mario.rossetti@dominio.com", general.email());
                            assertEquals(LocalDate.of(1969, 8, 6), general.birthday());
                            assertEquals(637L, general.birthplace());
                            assertEquals("RSSMRA69M06A346L", general.fc());
                            assertEquals(true, general.gender());
                            assertEquals(890L, general.residence());
                            assertEquals(11L, general.workplace());
                        },
                        Assertions::fail
                );
    }

    @Test
    void fetchAll() {
        assertEquals(5, dao.fetchAll().count());
    }
}