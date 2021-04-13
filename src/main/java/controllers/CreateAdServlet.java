package controllers;

import dao.DaoFactory;
import models.Ad;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/ads/create")
public class CreateAdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/ads/create.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // get info from form request
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        long userId = 1;
        long id = 5;

        // create an ad
        Ad adToInsert = new Ad(id, userId, title, description);
        System.out.println(adToInsert);
        DaoFactory.getAdsDao().insert(adToInsert);

        // redirect the user back view listing all ads
        response.sendRedirect("/ads");

    }
}
