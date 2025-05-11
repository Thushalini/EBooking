package dao;

import model.Bus;
import 
util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BusDAO {

    // Add a bus to the database
    public void addBus(Bus bus) throws SQLException, ClassNotFoundException {
        String query = "INSERT INTO bus (Start, Destination, Time, Seats, Price) VALUES (?, ?, ?, ?, ?)";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, bus.getStart());
            stmt.setString(2, bus.getDestination());
            stmt.setString(3, bus.getTime());
            stmt.setInt(4, bus.getSeats());
            stmt.setDouble(5, bus.getPrice());
            stmt.executeUpdate();
        }
    }

    // Get all buses from the database
    public List<Bus> getAllBuses() throws SQLException, ClassNotFoundException {
        List<Bus> buses = new ArrayList<>();
        String query = "SELECT * FROM bus";
        try (Connection conn = DBConnection.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(query)) {
            while (rs.next()) {
                Bus bus = new Bus();
                bus.setBusId(rs.getInt("BusId"));
                bus.setStart(rs.getString("Start"));
                bus.setDestination(rs.getString("Destination"));
                bus.setTime(rs.getString("Time"));
                bus.setSeats(rs.getInt("Seats"));
                bus.setPrice(rs.getDouble("Price"));
                buses.add(bus);
            }
        }
        return buses;
    }
    
    // Method to delete a bus from the database
    public void deleteBus(int busId) throws SQLException, ClassNotFoundException {
        String query = "DELETE FROM bus WHERE BusId = ?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setInt(1, busId);
            stmt.executeUpdate();
        }
    }
}
