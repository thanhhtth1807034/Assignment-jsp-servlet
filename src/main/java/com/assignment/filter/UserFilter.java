package com.assignment.filter;

import com.assignment.model.User;
import com.assignment.util.ApplicationConstant;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class UserFilter implements Filter {
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute(ApplicationConstant.LOGGED_IN_USER);
        boolean authenticated = false;
        if (user != null && user.isMember()){
            authenticated = true;
        }
        if (authenticated){
            filterChain.doFilter(servletRequest, servletResponse);
        } else {
            request.setAttribute("code", HttpServletResponse.SC_FORBIDDEN);
            request.setAttribute("message", "Login failed. Please login to continue!!!");
            request.getRequestDispatcher("/account/login.jsp").forward(request, response);
        }
    }

    public void destroy() {

    }
}
