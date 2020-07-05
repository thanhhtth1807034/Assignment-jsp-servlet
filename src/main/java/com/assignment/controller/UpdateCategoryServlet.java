package com.assignment.controller;

import com.assignment.dao.FruitDAO;
import com.assignment.model.Category;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateCategoryServlet", urlPatterns = "/admin-update-category")
public class UpdateCategoryServlet extends HttpServlet {
    FruitDAO dao = new FruitDAO();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        Category category = new Category(id, name);
        dao.updateCategory(category);
        response.sendRedirect("admin-list-category");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Category category = dao.getCategoryById(id);
        request.setAttribute("categoryId", id);
        request.setAttribute("categories", category);
        request.getRequestDispatcher("admin/updateCategory.jsp").forward(request, response);
    }
}
