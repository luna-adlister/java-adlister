import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet("/products")
public class ViewProductsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        List<Product> products = new ArrayList<>(Arrays.asList(
//                new Product("hammer", 9.99),
//                new Product("screwdriver", 9.99),
//                new Product("drill", 19.99)
//        ));

        Products productsDao = DaoFactory.getProductsDao();
        List<Product> products = productsDao.all();

        // get list of products
        request.setAttribute("products", products);
        request.getRequestDispatcher("products/index.jsp").forward(request, response);

    }
}
