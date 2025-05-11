package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static final String URL = "jdbc:sqlserver://DESKTOP-D01TDV0\\\\SQLEXPRESS:1433;databaseName=EBooking;integratedSecurity=true;encrypt=false";
    //private static final String USER = "root";
    //private static final String PASSWORD = "";

    public static Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(URL/*, USER, PASSWORD*/);
    }
}