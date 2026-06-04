package package1;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class CreateTable {

    public static void main(String[] args) {

        try (Connection conn = JDBCConnection.getConnection();
             Statement stmt = conn.createStatement()) {

            String createSQL =
                    "CREATE TABLE IF NOT EXISTS students (" +
                    "id INT AUTO_INCREMENT PRIMARY KEY, " +
                    "name VARCHAR(100) NOT NULL, " +
                    "email VARCHAR(150) UNIQUE, " +
                    "grade DOUBLE DEFAULT 0.0, " +
                    "enrolled_on DATE" +
                    ")";

            stmt.execute(createSQL);

            System.out.println("Table 'students' created!");

            ResultSet rs = stmt.executeQuery(
                    "SELECT TABLE_NAME " +
                    "FROM INFORMATION_SCHEMA.TABLES " +
                    "WHERE TABLE_NAME = 'STUDENTS'"
            );

            if (rs.next()) {
                System.out.println("Table exists: "
                        + rs.getString("TABLE_NAME"));
            } else {
                System.out.println("Table not found.");
            }

            rs.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}