package dunder.mifflin.persistance.jdbc;

import dunder.mifflin.persistance.daos.HsExamDAO;
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
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;

class HsExamJDBCTest {

    private static Connection conn;
    private static DSLContext create;
    private static HsExamDAO dao;

    @BeforeAll
    static void open() throws SQLException {
        conn = DriverManager.getConnection(
                Database.URL,
                Database.USERNAME,
                Database.PASSWORD
        );
        create = DSL.using(conn, SQLDialect.POSTGRES);
        dao = new HsExamJDBC(create);
    }

    @AfterAll
    static void close() throws SQLException {
        conn.close();
        create.close();
    }

    @Test
    void qualifiedFor() {
        assertEquals(50, dao.qualifiedFor(169L).count());
        assertEquals(0, dao.qualifiedFor(1L).count());
    }

    @Test
    void count() {
        assertEquals(133, dao.count());
    }

    @Test
    void byKey() {
        dao.byKey(1L).ifPresentOrElse(
                (exam) -> {
                    assertEquals(1L, exam.id());
                    assertEquals("Estrazione di dente deciduo", exam.name());
                    assertEquals("Info Estrazione di dente deciduo (gratuita fino a 14 anni)", exam.info());
                },
                Assertions::fail
        );

        assertFalse(dao.byKey(134L).isPresent(), "not health service exam");
        assertFalse(dao.byKey(0L).isPresent(), "not existing exam");
    }

    @Test
    void byKeys() {
        final var results = dao.byKeys(0L, 1L, 134L);

        assertFalse(results.containsKey(0L));

        assertFalse(results.containsKey(134L));

        Optional.ofNullable(results.get(1L))
                .ifPresentOrElse(
                        (exam) -> {
                            assertEquals(1L, exam.id());
                            assertEquals("Estrazione di dente deciduo", exam.name());
                            assertEquals("Info Estrazione di dente deciduo (gratuita fino a 14 anni)", exam.info());
                        },
                        Assertions::fail
                );
    }

    @Test
    void fetchAll() {
        assertEquals(133, dao.fetchAll().count());
    }
}