import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/view-color")
public class ViewColorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // /view-color?choice=red
        String color = request.getParameter("choice");
        PrintWriter out = response.getWriter();
        out.println(String.format("<h1 style='color:%s'>%s</h1>", color, color));
    }
}
