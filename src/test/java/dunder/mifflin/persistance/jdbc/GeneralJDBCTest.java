package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.GeneralDAO;
import dunder.mifflin.persistance.daos.exceptions.DAOException;
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
        dao.follows(33L).ifPresentOrElse(
                (general) -> {
                    assertEquals(99L, general.id());
                    assertEquals("Arianna", general.name());
                    assertEquals("Bonetti", general.surname());
                    assertEquals("arianna.bonetti@dominio.com", general.email());
                    assertEquals(LocalDate.of(1966, 8, 8), general.birthday());
                    assertEquals(908L, general.birthplace());
                    assertEquals("BNTRNN66M48B165D", general.fc());
                    assertEquals(false, general.gender());
                    assertEquals(946L, general.residence());
                    assertEquals(11L, general.workplace());
                },
                Assertions::fail
        );

        Assertions.assertFalse(dao.follows(1L).isPresent());
    }

    @Test
    void suitable() {
        assertEquals(2, dao.suitable(33L, "", "", "").count());
        assertEquals(2, dao.suitable(33L, "", "@", "").count());
        assertEquals(1, dao.suitable(33L, "G", "", "").count());
        assertEquals(0, dao.suitable(33L, "", "X", "").count());
    }

    @Test
    void testEntrustsUndo() {
        final var entrusts = dao.entrusts(33L, 86L);

        assertEquals(86L, entrusts.id());
        assertEquals("Simonetta", entrusts.name());
        assertEquals("Monaco", entrusts.surname());
        assertEquals("simonetta.monaco@dominio.com", entrusts.email());
        assertEquals(LocalDate.of(1974, 10, 11), entrusts.birthday());
        assertEquals(958L, entrusts.birthplace());
        assertEquals("MNCSNT74R51D365A", entrusts.fc());
        assertEquals(false, entrusts.gender());
        assertEquals(832L, entrusts.residence());
        assertEquals(11L, entrusts.workplace());

        dao.follows(33L).ifPresentOrElse(
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

        dao.undo(33L).ifPresentOrElse(
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

        dao.follows(33L).ifPresentOrElse(
                (general) -> {
                    assertEquals(99L, general.id());
                    assertEquals("Arianna", general.name());
                    assertEquals("Bonetti", general.surname());
                    assertEquals("arianna.bonetti@dominio.com", general.email());
                    assertEquals(LocalDate.of(1966, 8, 8), general.birthday());
                    assertEquals(908L, general.birthplace());
                    assertEquals("BNTRNN66M48B165D", general.fc());
                    assertEquals(false, general.gender());
                    assertEquals(946L, general.residence());
                    assertEquals(11L, general.workplace());
                },
                Assertions::fail
        );

        assertThrows(DAOException.class, () -> dao.entrusts(33L, 99L), "already following");
        assertThrows(DAOException.class, () -> dao.entrusts(33L, 22L), "not suitable");
        assertThrows(DAOException.class, () -> dao.entrusts(33L, 0L), "not existing general");
        assertThrows(DAOException.class, () -> dao.entrusts(0L, 33L), "not existing patient");
    }

    @Test
    void general() {
        dao.general(6L).ifPresentOrElse(
                (general) -> {
                    assertEquals(99L, general.id());
                    assertEquals("Arianna", general.name());
                    assertEquals("Bonetti", general.surname());
                    assertEquals("arianna.bonetti@dominio.com", general.email());
                    assertEquals(LocalDate.of(1966, 8, 8), general.birthday());
                    assertEquals(908L, general.birthplace());
                    assertEquals("BNTRNN66M48B165D", general.fc());
                    assertEquals(false, general.gender());
                    assertEquals(946L, general.residence());
                    assertEquals(11L, general.workplace());
                },
                Assertions::fail
        );

        assertFalse(dao.general(0L).isPresent(), "not existing follows");
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
    void byKeys() {
        final var results = dao.byKeys(1L, 99L);

        assertFalse(results.containsKey(1L));

        Optional.ofNullable(results.get(99L))
                .ifPresentOrElse(
                        (general) -> {
                            assertEquals(99L, general.id());
                            assertEquals("Arianna", general.name());
                            assertEquals("Bonetti", general.surname());
                            assertEquals("arianna.bonetti@dominio.com", general.email());
                            assertEquals(LocalDate.of(1966, 8, 8), general.birthday());
                            assertEquals(908L, general.birthplace());
                            assertEquals("BNTRNN66M48B165D", general.fc());
                            assertEquals(false, general.gender());
                            assertEquals(946L, general.residence());
                            assertEquals(11, general.workplace());
                        },
                        Assertions::fail
                );
    }

    @Test
    void fetchAll() {
        assertEquals(5, dao.fetchAll().count());
    }
}