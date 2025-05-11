package controller;

import dao.EmployeeDao;
import model.Employee;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/EmployeeServlet")
public class EmployeeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private EmployeeDao employeeDAO;

    public void init() {
        employeeDAO = new EmployeeDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        
        if (action == null || action.isEmpty()) {
            action = "default";  // You can set this to an appropriate action
        }


        try {
            switch (action) {
                case "new":
                    showNewForm(request, response);
                    break;
                case "insert":
                    insertEmployee(request, response);
                    break;
                case "delete":
                    deleteEmployee(request, response);
                    break;
                case "edit":
                    showEditForm(request, response);
                    break;
                case "update":
                    updateEmployee(request, response);
                    break;
                default:
                    listEmployees(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    // Method to list all employees
    private void listEmployees(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Employee> listEmployee = employeeDAO.getAllEmployees();
        request.setAttribute("listEmployee", listEmployee);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/JSP/list_employees.jsp");
        dispatcher.forward(request, response);
    }

    // Method to show form for adding a new employee
    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/JSP/add_employee.jsp");
        dispatcher.forward(request, response);
    }

    // Method to show form for editing an existing employee
    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("employeeID"));
        Employee existingEmployee = employeeDAO.selectEmployee(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/JSP/edit_employee.jsp");
        request.setAttribute("employee", existingEmployee);
        dispatcher.forward(request, response);
    }

    // Method to insert a new employee
    private void insertEmployee(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phoneNumber");
        String position = request.getParameter("position");
        double salary = Double.parseDouble(request.getParameter("salary"));
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Employee newEmployee = new Employee();
        newEmployee.setFirstName(firstName);
        newEmployee.setLastName(lastName);
        newEmployee.setEmail(email);
        newEmployee.setPhoneNumber(phoneNumber);
        newEmployee.setPosition(position);
        newEmployee.setSalary(salary);
        newEmployee.setUsername(username);
        newEmployee.setPassword(password);

        employeeDAO.insertEmployee(newEmployee);
        response.sendRedirect("EmployeeServlet");
    }

    // Method to update an existing employee
    private void updateEmployee(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("employeeID"));
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phoneNumber");
        String position = request.getParameter("position");
        double salary = Double.parseDouble(request.getParameter("salary"));
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Employee employee = new Employee();
        employee.setEmployeeID(id);
        employee.setFirstName(firstName);
        employee.setLastName(lastName);
        employee.setEmail(email);
        employee.setPhoneNumber(phoneNumber);
        employee.setPosition(position);
        employee.setSalary(salary);
        employee.setUsername(username);
        employee.setPassword(password);

        employeeDAO.updateEmployee(employee);
        response.sendRedirect("EmployeeServlet");
    }

    // Method to delete an employee
    private void deleteEmployee(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("employeeID"));
        employeeDAO.deleteEmployee(id);
        response.sendRedirect("EmployeeServlet");
    }
}
