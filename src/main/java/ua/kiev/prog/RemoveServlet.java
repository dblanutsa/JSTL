package ua.kiev.prog;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/remove")
public class RemoveServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        for (Order el : Orders.getList()){
            String param  = req.getParameter(el.getName());
            if (param != null){
                Orders.remove(el.getName());
            }
        }
        String url = req.getHeader("referer");
        resp.sendRedirect(url);
    }
}

