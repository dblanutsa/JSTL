package ua.kiev.prog;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/add")
public class AddedServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String model = req.getParameter("model");

        int n = 0;
        for (char c : model.toCharArray()){
            n = c == ' ' ? n + 1 : n;
        }
        if (model.equals("")|| n == model.length()){
            model = "no information";
        }

        String priceStr = req.getParameter("price");
        Integer price;
        try {
            price = Integer.parseInt(priceStr);
        }catch (NumberFormatException e){
            e.printStackTrace();
            price = 100;
        }

        Orders.add(new Order(model, price));

        String url = req.getHeader("referer");
        resp.sendRedirect(url);
    }

}

