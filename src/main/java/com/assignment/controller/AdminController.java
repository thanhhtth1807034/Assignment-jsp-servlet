package com.assignment.controller;

import com.assignment.dao.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

public class AdminController extends HttpServlet {
    private static UserDAO dao = new UserDAO();
    private static final Logger LOGGER = Logger.getLogger(LoginController.class.getSimpleName());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/admin/listfruit.jsp").forward(req,resp);
    }
}
