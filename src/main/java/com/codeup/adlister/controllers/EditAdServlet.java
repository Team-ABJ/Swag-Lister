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
import java.sql.SQLException;

import static java.lang.Integer.parseInt;

@WebServlet(name = "controllers.EditAdServlet", urlPatterns = "/ads/edit/*")
public class EditAdServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("validAttempt", (User) request.getSession().getAttribute("user") != null);
        String id = request.getPathInfo().substring(1);

        Long AdId = Long.valueOf(id);
        System.out.println(AdId);

        request.setAttribute("ads", DaoFactory.getAdsDao().findSwagAd(AdId));
        request.setAttribute("swagId", id);
        request.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(request, response);

    }
//        DaoFactory.getAdsDao().update(parseInt(id));
//
//        System.out.println(id);
//        request.setAttribute("swagId", id);
//        request.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(request, response);
//
//    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String id = request.getPathInfo().substring(1);

        User user = (User) request.getSession().getAttribute("user");
        int swagId = parseInt(request.getParameter("swagId"));
        Ad ad = new Ad(swagId,
                user.getId(),
                request.getParameter("title"),
                request.getParameter("description"),
                request.getParameter("category"),
                request.getParameter("price"));
        DaoFactory.getAdsDao().update(ad);
        response.sendRedirect("/profile");

    }
}

