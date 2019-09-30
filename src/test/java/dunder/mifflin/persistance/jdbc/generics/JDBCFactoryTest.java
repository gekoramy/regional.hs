package dunder.mifflin.persistance.jdbc.generics;

import dunder.mifflin.persistance.daos.exceptions.DAOException;
import dunder.mifflin.persistance.jdbc.config.Database;
import org.junit.jupiter.api.Test;

import java.sql.DriverManager;
import java.sql.SQLException;

import static org.junit.jupiter.api.Assertions.assertThrows;

class JDBCFactoryTest {

    @Test
    void exceptions() throws SQLException {
        try (
                final var connection = DriverManager.getConnection(
                        Database.URL,
                        Database.USERNAME,
                        Database.PASSWORD
                )
        ) {
            assertThrows(
                    DAOException.class,
                    () -> new JDBCFactory(connection).avatar().store(0L, "url"),
                    "not existing person"
            );
        }
    }

}