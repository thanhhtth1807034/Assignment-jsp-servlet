package com.assignment.controller;

import com.assignment.dao.FruitDAO;
import com.assignment.model.Category;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddCategoryServlet",urlPatterns = "/admin/add-category")
public class AddCategoryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        FruitDAO dao = new FruitDAO();
        String name = request.getParameter("name");
        Category category = new Category(name);
        dao.insertCategory(category);
        response.sendRedirect("admin/add-category");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/admin/addcategory.jsp").forward(request,response);
    }
}
