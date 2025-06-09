
package entity;

public class Bus {
    private int id;
    private String name;
    private String number;
    private String type;

    public Bus() {}

    public Bus(int id, String name, String number, String type) {
        this.id = id;
        this.name = name;
        this.number = number;
        this.type = type;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getNumber() { return number; }
    public void setNumber(String number) { this.number = number; }

    public String getType() { return type; }
    public void setType(String type) { this.type = type; }

    @Override
public String toString() {
    return "Bus [id=" + id + ", name=" + name + ", number=" + number + ", type=" + type + "]";
}

}
