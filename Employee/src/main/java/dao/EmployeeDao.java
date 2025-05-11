package dao;

import model.Employee;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDao {
    private final String jdbcURL = "jdbc:sqlserver://DESKTOP-D01TDV0\\SQLEXPRESS:1433;databaseName=EBooking;integratedSecurity=true;encrypt=false";
    //private final String jdbcUsername = "your_username";
    //private final String jdbcPassword = "your_password";

    private static final String INSERT_EMPLOYEE_SQL = "INSERT INTO Employees (firstName, lastName, email, phoneNumber, position, salary, username, password) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    private static final String SELECT_EMPLOYEE_BY_ID = "SELECT * FROM Employees WHERE employeeID = ?";
    private static final String SELECT_ALL_EMPLOYEES = "SELECT * FROM Employees";
    private static final String DELETE_EMPLOYEE_SQL = "DELETE FROM Employees WHERE employeeID = ?";
    private static final String UPDATE_EMPLOYEE_SQL = "UPDATE Employees SET firstName = ?, lastName = ?, email = ?, phoneNumber = ?, position = ?, salary = ?, username = ?, password = ? WHERE employeeID = ?";

    // SQL Server driver and connection setup
    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(jdbcURL/*, jdbcUsername, jdbcPassword*/);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    // Create
    public void insertEmployee(Employee employee) throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_EMPLOYEE_SQL)) {
            preparedStatement.setString(1, employee.getFirstName());
            preparedStatement.setString(2, employee.getLastName());
            preparedStatement.setString(3, employee.getEmail());
            preparedStatement.setString(4, employee.getPhoneNumber());
            preparedStatement.setString(5, employee.getPosition());
            preparedStatement.setDouble(6, employee.getSalary());
            preparedStatement.setString(7, employee.getUsername());
            preparedStatement.setString(8, employee.getPassword());
            preparedStatement.executeUpdate();
        }
    }

    // Read
    public Employee selectEmployee(int id) {
        Employee employee = null;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_EMPLOYEE_BY_ID)) {
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                employee = new Employee();
                employee.setEmployeeID(id);
                employee.setFirstName(rs.getString("firstName"));
                employee.setLastName(rs.getString("lastName"));
                employee.setEmail(rs.getString("email"));
                employee.setPhoneNumber(rs.getString("phoneNumber"));
                employee.setPosition(rs.getString("position"));
                employee.setSalary(rs.getDouble("salary"));
                employee.setUsername(rs.getString("username"));
                employee.setPassword(rs.getString("password"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employee;
    }

    // Read All
    public List<Employee> getAllEmployees() {
        List<Employee> employees = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_EMPLOYEES)) {
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                Employee employee = new Employee();
                employee.setEmployeeID(rs.getInt("employeeID"));
                employee.setFirstName(rs.getString("firstName"));
                employee.setLastName(rs.getString("lastName"));
                employee.setEmail(rs.getString("email"));
                employee.setPhoneNumber(rs.getString("phoneNumber"));
                employee.setPosition(rs.getString("position"));
                employee.setSalary(rs.getDouble("salary"));
                employee.setUsername(rs.getString("username"));
                employee.setPassword(rs.getString("password"));
                employees.add(employee);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employees;
    }

    // Update
    public boolean updateEmployee(Employee employee) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(UPDATE_EMPLOYEE_SQL)) {
            statement.setString(1, employee.getFirstName());
            statement.setString(2, employee.getLastName());
            statement.setString(3, employee.getEmail());
            statement.setString(4, employee.getPhoneNumber());
            statement.setString(5, employee.getPosition());
            statement.setDouble(6, employee.getSalary());
            statement.setString(7, employee.getUsername());
            statement.setString(8, employee.getPassword());
            statement.setInt(9, employee.getEmployeeID());

            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    // Delete
    public boolean deleteEmployee(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(DELETE_EMPLOYEE_SQL)) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }
}
