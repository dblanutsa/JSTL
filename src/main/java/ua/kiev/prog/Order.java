package ua.kiev.prog;

public class Order {

    private String name;
    private int price;

    public Order(String name, int price) {
        this.name = name;
        this.price = price;
    }

    public Order() {
    }

    public String getName() {
        return name;
    }

    public int getPrice() {
        return price;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Order)) return false;

        Order order = (Order) o;

        return getName() != null ? getName().equals(order.getName()) : order.getName() == null;
    }

    @Override
    public int hashCode() {
        return getName() != null ? getName().hashCode() : 0;
    }

}
