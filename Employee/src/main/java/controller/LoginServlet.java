package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    // Hardcoded admin credentials
    private final String ADMIN_USERNAME = "admin";
    private final String ADMIN_PASSWORD = "admin123";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (ADMIN_USERNAME.equals(username) && ADMIN_PASSWORD.equals(password)) {
            // Successful login, redirect to admin dashboard
            HttpSession session = request.getSession();
            session.setAttribute("admin", username);
            response.sendRedirect("JSP/Admin.jsp");
        } else {
            // Failed login, redirect back to login page with error
            request.setAttribute("errorMessage", "Invalid username or password.");
            request.getRequestDispatcher("JSP/index.jsp").forward(request, response);
        }
    }
}
