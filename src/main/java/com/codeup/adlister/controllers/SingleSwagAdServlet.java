package com.codeup.adlister.controllers;


import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;


@WebServlet(name = "controllers.SingleSwagAdServlet", urlPatterns = "/singleSwagAd")
public class SingleSwagAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long adId = Long.valueOf(request.getParameter("id"));
        System.out.println(adId);

        request.setAttribute("ads", DaoFactory.getAdsDao().findSwagAd(adId));
        request.getRequestDispatcher("/WEB-INF/singleSwagAdPage.jsp").forward(request, response);
    }
}









