import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/pizza-order")
public class PizzaOrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // what do i write to send the user a view based on pizza-order.jsp????
        request.getRequestDispatcher("pizza-order.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // pull out each parameter value and print it out
        System.out.println(request.getParameter("crust-type"));
        System.out.println(request.getParameter("sauce-type"));
        String[] toppings = request.getParameterValues("toppings");
        for (String topping : toppings) {
            System.out.print(topping);
            System.out.print(" ");
        }
        System.out.println(" ");
        System.out.println(request.getParameter("address"));
    }
}
