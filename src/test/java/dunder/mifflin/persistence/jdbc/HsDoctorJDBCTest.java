package dunder.mifflin.persistence.jdbc;

import dunder.mifflin.persistence.daos.HsDoctorDAO;
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

class HsDoctorJDBCTest {

    private static Connection conn;
    private static DSLContext create;
    private static HsDoctorDAO dao;

    @BeforeAll
    static void open() throws SQLException {
        conn = DriverManager.getConnection(
                Database.URL,
                Database.USERNAME,
                Database.PASSWORD
        );
        create = DSL.using(conn, SQLDialect.POSTGRES);
        dao = new HsDoctorJDBC(create);
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
        dao.byKey(10L).ifPresentOrElse(
                (doctor) -> {
                    assertEquals(10L, doctor.id());
                    assertEquals("Francesca", doctor.name());
                    assertEquals("Ferrari", doctor.surname());
                    assertEquals("francesca.ferrari@dominio.com", doctor.email());
                    assertEquals(LocalDate.of(1990, 3, 24), doctor.birthday());
                    assertEquals(1107L, doctor.birthplace());
                    assertEquals("FRRFNC90C64A452V", doctor.fc());
                    assertEquals(false, doctor.gender());
                    assertEquals(1003L, doctor.residence());
                    assertEquals(11L, doctor.workplace());
                },
                Assertions::fail
        );

        assertFalse(dao.byKey(1L).isPresent());
    }

    @Test
    void byKeys() {
        final var results = dao.byKeys(new Long[]{1L, 17L});

        assertFalse(results.containsKey(1L));

        Optional.ofNullable(results.get(17L))
                .ifPresentOrElse(
                        (doctor) -> {
                            assertEquals(17L, doctor.id());
                            assertEquals("Eleonora", doctor.name());
                            assertEquals("Gatti", doctor.surname());
                            assertEquals("eleonora.gatti@dominio.com", doctor.email());
                            assertEquals(LocalDate.of(1967, 1, 22), doctor.birthday());
                            assertEquals(628L, doctor.birthplace());
                            assertEquals("GTTLNR67A62D383Z", doctor.fc());
                            assertEquals(false, doctor.gender());
                            assertEquals(957L, doctor.residence());
                            assertEquals(11L, doctor.workplace());
                        },
                        Assertions::fail
                );
    }

    @Test
    void fetchAll() {
        assertEquals(5, dao.fetchAll().count());
    }
}