package com.assignment.controller;

import com.assignment.dao.UserDAO;
import com.assignment.model.User;
import com.assignment.util.ApplicationConstant;
import com.assignment.util.StringUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.logging.Logger;

public class LoginController extends HttpServlet {
    private static UserDAO userDAO = new UserDAO();
    private static final Logger LOGGER = Logger.getLogger(LoginController.class.getSimpleName());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/account/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String password = req.getParameter("password");
        String username = req.getParameter("username");
        User user = userDAO.findByUsernameAndStatus(username, User.Status.ACTIVE);
        if (user == null){
            resp.setStatus(HttpServletResponse.SC_NOT_FOUND);
            resp.getWriter().print("Not Found");
            return;
        }
        if (StringUtil.comparePasswordWithSalt(password, user.getSalt(), user.getPassword())){
            HttpSession session = req.getSession();
            session.setAttribute(ApplicationConstant.LOGGED_IN_USER, user);
            resp.sendRedirect("/home");
        }
        resp.setStatus(HttpServletResponse.SC_FORBIDDEN);
        resp.getWriter().print("Unauthorized!");
        return;
    }
}
