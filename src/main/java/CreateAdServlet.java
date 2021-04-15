import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/ads/create.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Ad adToBeCreated = new Ad();

        String title = request.getParameter("title");
        String description = request.getParameter("description");

        adToBeCreated.setTitle(title);
        adToBeCreated.setDescription(description);
        adToBeCreated.setUserId(1L);

        long savedId = DaoFactory.getAdsDao().insert(adToBeCreated);
        adToBeCreated.setId(savedId);

        request.setAttribute("ad", adToBeCreated);
        request.getRequestDispatcher("/WEB-INF/ads/show.jsp").forward(request, response);

    }
}
