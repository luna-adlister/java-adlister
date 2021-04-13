import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/color-profile")
public class ColorPreferenceServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/color-form.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        // add my preferences to the session and redirect to the /ads
        if (request.getParameter("forget") != null) {
            session.removeAttribute("font-color");
            session.removeAttribute("background-color");
            response.sendRedirect("/color-profile");
            // session.invalidate() to remove all attributes
        } else {
            session.setAttribute("font-color", request.getParameter("font-color"));
            session.setAttribute("background-color", request.getParameter("background-color"));
            response.sendRedirect("/ads");
        }

    }

}
