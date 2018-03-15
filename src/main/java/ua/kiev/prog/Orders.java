package ua.kiev.prog;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class Orders {
    private static List<Order> list = new ArrayList<>();

    static {
        list.add(new Order("Apple IPhone", 800));
        list.add(new Order("Apple IPhone Plus", 950));
        list.add(new Order("Apple IPad", 400));
        list.add(new Order("Apple IPad mini", 300));
        list.add(new Order("Samsung Galaxy S7", 850));
        list.add(new Order("Samsung Galaxy Note 7", 1000));
    }

    public static List<Order> getList(){
        return list;
    }

    public static boolean add(Order order){
        if (order == null || list.contains(order)){
            return false;
        }

        list.add(order);
        return  true;
    }

    public static List<Order> get(String name) {
        if (name == null || "".equals(name))
            return list;

        name = name.toLowerCase();

        List<Order> res = new ArrayList<>();
        for (Order o : list) {
            if (o.getName().toLowerCase().indexOf(name) >= 0)
                res.add(o);
        }
        return res;
    }

    public static List<Order> get(int price) {
        List<Order> res = new ArrayList<>();
        for (Order o : list) {
            if (o.getPrice() < price)
                res.add(o);
        }
        return res;
    }

    public static void remove(String name){
        list.remove(new Order(name, 0));
    }
}
