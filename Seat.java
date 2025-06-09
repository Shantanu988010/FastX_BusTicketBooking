package entity;

public class Seat {
    private int id;
    private String seatNumber;
    private String status; // AVAILABLE or BOOKED
    private int busId;

    public Seat() {}

    public Seat(int id, String seatNumber, String status, int busId) {
        this.id = id;
        this.seatNumber = seatNumber;
        this.status = status;
        this.busId = busId;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getSeatNumber() { return seatNumber; }
    public void setSeatNumber(String seatNumber) { this.seatNumber = seatNumber; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }

    public int getBusId() { return busId; }
    public void setBusId(int busId) { this.busId = busId; }

    @Override
public String toString() {
    return "Seat [id=" + id + ", seatNumber=" + seatNumber + ", status=" + status + ", busId=" + busId + "]";
}

}
