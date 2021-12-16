package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import static java.lang.Integer.parseInt;

@WebServlet(name = "controllers.DeleteAdServlet", urlPatterns = "/ads/delete/*")
public class DeleteAdServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("validAttempt", (User) request.getSession().getAttribute("user") != null);
        String id = request.getPathInfo().substring(1);
        Long AdId = Long.valueOf(id);

        request.setAttribute("ads", DaoFactory.getAdsDao().findSwagAd(AdId));
        request.setAttribute("swagId", id);
        DaoFactory.getAdsDao().destroy(parseInt(id));
        System.out.println(id);
        request.getRequestDispatcher("/WEB-INF/ads/delete.jsp").forward(request, response);

    }




    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//        String id = request.getPathInfo().substring(1);


        response.sendRedirect("/profile");

    }
}
