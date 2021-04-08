import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/choose-color")
public class ChooseColorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        out.println("<form method='POST' action='/choose-color'>\n" +
                "    <input type=\"text\" name=\"choice\" placeholder=\"Enter a color\">\n" +
                "    <button>Submit</button>\n" +
                "</form>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String colorChoice = request.getParameter("choice");
        response.sendRedirect("/view-color?choice=" + colorChoice);
    }
}
