package com.assignment.controller;

import com.assignment.dao.UserDAO;
import com.assignment.model.User;
import com.assignment.model.UserHashmap;
import com.assignment.util.ConnectionHelper;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Logger;

public class RegisterController extends HttpServlet {
    private UserDAO dao = new UserDAO();
    private static final Logger LOGGER = Logger.getLogger(RegisterController.class.getSimpleName());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("roles", User.Role.values());
        req.getRequestDispatcher("/account/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String password = req.getParameter("password");
        String username = req.getParameter("username");
        String fullName = req.getParameter("fullName");
        String email = req.getParameter("email");
        String address = req.getParameter("address");
        String phone = req.getParameter("phone");
//        int role = User.Role.USER.getValue();
//        try {
//            role = Integer.parseInt(req.getParameter("role"));
//        } catch (NumberFormatException e) {
//            LOGGER.severe(e.getMessage());
//            return;
//        }

        UserHashmap userHashmap = new UserHashmap(username, password,email,fullName, address,phone);
        if (userHashmap.getErrors().size() > 0 ){
            req.setAttribute("errors", userHashmap.getErrors());
            req.getRequestDispatcher("/account/register.jsp").forward(req, resp);
        } else {
            User user = new User();
            user.setUsername(username);
            user.hashPassword(password);
            user.setFullName(fullName);
            user.setEmail(email);
            user.setAddress(address);
//            user.setRole(User.Role.findByValue(role));
            user.setPhone(phone);
            dao.save(user);
            resp.sendRedirect("/account/login");
        }
    }
}
