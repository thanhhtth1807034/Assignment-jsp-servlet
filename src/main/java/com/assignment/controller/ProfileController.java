package com.assignment.controller;

import com.assignment.dao.UserDAO;
import com.assignment.model.User;
import com.assignment.util.ApplicationConstant;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class ProfileController extends HttpServlet {
    private static UserDAO dao = new UserDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute(ApplicationConstant.LOGGED_IN_USER);
        if (user == null){
            req.setAttribute("code", HttpServletResponse.SC_FORBIDDEN);
            req.setAttribute("message", "Please login to continue!");
            req.getRequestDispatcher("/error.jsp").forward(req, resp);
            return;
        }

        User existUser = dao.findByUsernameAndStatus(user.getUsername(), User.Status.ACTIVE);
        if (existUser == null){
            req.setAttribute("code", HttpServletResponse.SC_NOT_FOUND);
            req.setAttribute("message", "Account is not exist");
            req.getRequestDispatcher("/error.jsp");
            return;
        }

        req.setAttribute("user", existUser);
        req.getRequestDispatcher("/account/profile.jsp").forward(req, resp);
    }
}
