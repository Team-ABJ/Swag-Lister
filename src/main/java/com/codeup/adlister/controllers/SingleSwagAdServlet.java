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
        request.setAttribute("validAttempt", (User) request.getSession().getAttribute("user") != null);


        request.getRequestDispatcher("/WEB-INF/singleSwagAdPage.jsp").forward(request, response);
  if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/singleSwagAd");
            return;
        }
//        if (request.getSession().getAttribute("user") != null) {
//            response.sendRedirect("/singleSwagAd");
//            return;
//        }
//        request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);

    }
}

//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        String username = request.getParameter("username");
//        String password = request.getParameter("password");
//        User user = DaoFactory.getUsersDao().findByUsername(username);
//
//        if (user == null) {
//            response.sendRedirect("/singleSwagAd");
//            return;
//        }
//
////        boolean validAttempt = Password.check(password, user.getPassword());
//        boolean validAttempt = true;
//        if (validAttempt) {
//            request.getSession().setAttribute("user", user);
//            response.sendRedirect("/singleSwagAd");
//        } else {
//            response.sendRedirect("/singleSwagAd");
//        }
//    }
//}










