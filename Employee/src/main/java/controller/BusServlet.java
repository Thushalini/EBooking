package controller;

import dao.BusDAO;
import model.Bus;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import java.io.Serializable;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/BusServlet")
public class BusServlet extends HttpServlet implements Serializable {
	
	private static final long serialVersionUID = 1L;  // Adding serialVersionUID

    private BusDAO busDAO;

    public BusServlet() {
        this.busDAO = new BusDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("add".equals(action)) {
            addBus(request, response);
        }
        
        try {
            switch (action) {
                case "delete":
                    deleteBus(request, response);
                    break;
                // other cases
            }
        } catch (SQLException | ClassNotFoundException e) {
            throw new ServletException(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	String action = request.getParameter("action");
    	
        try {
        	if ("delete".equals(action)) {
                deleteBus(request, response);
            } else {
                listBuses(request, response);  // Default to listing buses
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    private void addBus(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        // Retrieve bus details from the form
        String start = request.getParameter("start");
        String destination = request.getParameter("destination");
        String time = request.getParameter("time");
        int seats = Integer.parseInt(request.getParameter("seats"));
        double price = Double.parseDouble(request.getParameter("price"));

        // Create a new Bus object
        Bus bus = new Bus(start, destination, time, seats, price);

        // Add the bus to the database
        try {
            busDAO.addBus(bus);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        // Redirect back to the list of buses
        response.sendRedirect("BusServlet?action=list");
    }
    
 // Method to delete a bus
    private void deleteBus(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ClassNotFoundException {
    	int busId = Integer.parseInt(request.getParameter("id"));
        BusDAO busDAO = new BusDAO();
        busDAO.deleteBus(busId);
        
        // Redirect back to the list of buses after deletion
        response.sendRedirect("BusServlet?action=list");
    }

    private void listBuses(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ClassNotFoundException, ServletException, IOException {
        // Fetch the list of buses from the database
        List<Bus> buses = busDAO.getAllBuses();

        // Set the buses in the request scope
        request.setAttribute("buses", buses);

        // Forward the request to the JSP page
        request.getRequestDispatcher("/JSP/busManagement.jsp").forward(request, response);
    }
    
    
}
