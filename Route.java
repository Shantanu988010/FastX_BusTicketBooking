
package entity;

public class Route {
    private int id;
    private String origin;
    private String destination;
    private double fare;
    private Bus bus;

    public Route() {}

    public Route(int id, String origin, String destination, double fare, Bus bus) {
        this.id = id;
        this.origin = origin;
        this.destination = destination;
        this.fare = fare;
        this.bus = bus;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getOrigin() { return origin; }
    public void setOrigin(String origin) { this.origin = origin; }

    public String getDestination() { return destination; }
    public void setDestination(String destination) { this.destination = destination; }

    public double getFare() { return fare; }
    public void setFare(double fare) { this.fare = fare; }

    public Bus getBus() { return bus; }
    public void setBus(Bus bus) { this.bus = bus; }

    @Override
public String toString() {
    return "Route [id=" + id + ", origin=" + origin + ", destination=" + destination + ", fare=" + fare + ", bus=" + bus + "]";
}

}
