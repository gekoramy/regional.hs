package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.HsDoctorDAO;
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
        dao.byKey(169L).ifPresentOrElse(
                (doctor) -> {
                    assertEquals(169L, doctor.id());
                    assertEquals("Valentina", doctor.name());
                    assertEquals("Felce", doctor.surname());
                    assertEquals("valentina.felce@dominio.com", doctor.email());
                    assertEquals(LocalDate.of(1969, 7, 1), doctor.birthday());
                    assertEquals(12L, doctor.birthplace());
                    assertEquals("FLCVNT69L41A975G", doctor.fc());
                    assertEquals(false, doctor.gender());
                    assertEquals(1014L, doctor.residence());
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