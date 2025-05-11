package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TestingDriverandConnection {
    public static void main(String[] args) {
        String url = "jdbc:sqlserver://DESKTOP-D01TDV0\\SQLEXPRESS:1433;databaseName=EBooking;integratedSecurity=true;encrypt=false";

        //String username = "your_username";
        //String password = "your_password";

        try {
            Connection connection = DriverManager.getConnection(url/*, username, password*/);
            System.out.println("Connected to SQL Server successfully!");
            connection.close();
        } catch (SQLException e) {
            System.out.println("Error connecting to SQL Server.");
            e.printStackTrace();
        }
    }
}
