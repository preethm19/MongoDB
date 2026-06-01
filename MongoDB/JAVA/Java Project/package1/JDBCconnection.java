package package1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCconnection {

    private static final String URL =
            "jdbc:h2:mem:schooldb;DB_CLOSE_DELAY=-1";

    private static final String USER = "admin";
    private static final String PASSWORD = "admin123";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}