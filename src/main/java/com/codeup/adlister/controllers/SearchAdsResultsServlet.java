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
import java.util.List;
import java.util.jar.Attributes;


//protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        Long adId = Long.valueOf(request.getParameter("id"));
//        System.out.println(adId);
//
//        request.setAttribute("ads", DaoFactory.getAdsDao().findSwagAd(adId));
//        request.getRequestDispatcher("/WEB-INF/singleSwagAdPage.jsp").forward(request, response);
//        }
//        }


@WebServlet(name="controllers.SearchAdsResultsServlet", urlPatterns = "/searchAdsResults")

public class SearchAdsResultsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("validAttempt", (User) request.getSession().getAttribute("user") != null);
        List<Ad> ads = (List<Ad>) request.getSession().getAttribute("ads");
        request.setAttribute("ads", ads);
        request.getRequestDispatcher("/WEB-INF/searchAdsResults.jsp").forward(request,response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String userSearch = request.getParameter("searchInput");

        System.out.println(userSearch);
        try {
            List<Ad> ads = DaoFactory.getAdsDao().searchAdsFromResult(userSearch);
            request.getSession().setAttribute("ads", ads);
            System.out.println(ads);
            response.sendRedirect("/searchAdsResults");
        } catch (SQLException e) {
            e.printStackTrace();
        }

//        try {
//            request.setAttribute("ads",DaoFactory.getAdsDao().searchAdsFromResult(userSearch));
//            System.out.println(userSearch);
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }


    }
}
