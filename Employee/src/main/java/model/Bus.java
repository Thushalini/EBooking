package model;

public class Bus {
    private int busId;
    private String start;
    private String destination;
    private String time;
    private int seats;
    private double price;

    // Constructor
    public Bus(String start, String destination, String time, int seats, double price) {
        this.start = start;
        this.destination = destination;
        this.time = time;
        this.seats = seats;
        this.price = price;
    }

    // Default constructor
    public Bus() {}

    // Getters and Setters
    public int getBusId() { return busId; }
    public void setBusId(int busId) { this.busId = busId; }
    public String getStart() { return start; }
    public void setStart(String start) { this.start = start; }
    public String getDestination() { return destination; }
    public void setDestination(String destination) { this.destination = destination; }
    public String getTime() { return time; }
    public void setTime(String time) { this.time = time; }
    public int getSeats() { return seats; }
    public void setSeats(int seats) { this.seats = seats; }
    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }
}
