package com.assignment.controller;

import com.assignment.dao.FruitDAO;
import com.assignment.model.Category;
import com.assignment.model.CategoryForm;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddCategoryServlet", urlPatterns = "/admin/add-category")
public class AddCategoryServlet extends HttpServlet {
    FruitDAO dao = new FruitDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");

        CategoryForm categoryform = new CategoryForm(name);
        if (categoryform.getErrors().size() > 0) {
            request.setAttribute("errors", categoryform.getErrors());
            request.getRequestDispatcher("/admin/add-category.jsp").forward(request, response);

        } else {
            Category category = new Category(name);
            dao.insertCategory(category);
            response.sendRedirect("/admin/add-category");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/admin/addcategory.jsp").forward(request, response);
    }
}
