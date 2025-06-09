
package entity;

public class Booking {
    private int id;
    private User user;
    private Route route;
    private int seatCount;
    private double totalFare;

    public Booking() {}

    public Booking(int id, User user, Route route, int seatCount) {
        this.id = id;
        this.user = user;
        this.route = route;
        this.seatCount = seatCount;
        this.totalFare = seatCount * route.getFare();
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public User getUser() { return user; }
    public void setUser(User user) { this.user = user; }

    public Route getRoute() { return route; }
    public void setRoute(Route route) { this.route = route; }

    public int getSeatCount() { return seatCount; }
    public void setSeatCount(int seatCount) {
        this.seatCount = seatCount;
        this.totalFare = seatCount * route.getFare();
    }

    public double getTotalFare() { return totalFare; }
    public void setTotalFare(double totalFare) { this.totalFare = totalFare; }

    @Override
public String toString() {
    return "Booking [id=" + id + ", user=" + user + ", route=" + route +", seatCount=" + seatCount + ", totalFare=" + totalFare + "]";
}



    
}

