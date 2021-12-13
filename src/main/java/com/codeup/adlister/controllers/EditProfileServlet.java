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


    @WebServlet(name = "controllers.EditProfileServlet", urlPatterns = "/EditProfile")
    public class EditProfileServlet extends HttpServlet {
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            Long userId = Long.valueOf(request.getParameter("id"));
            System.out.println(userId);

            request.setAttribute("users", DaoFactory.getUsersDao().findUser(userId));
            request.getRequestDispatcher("/WEB-INF/EditProfile.jsp").forward(request, response);
        }

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
            long id = Long.parseLong(request.getParameter("id"));
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");



            User user = new User(id, username, email, password);
            DaoFactory.getUsersDao().updateUser(user);
            response.sendRedirect("/logout");

        }
}
