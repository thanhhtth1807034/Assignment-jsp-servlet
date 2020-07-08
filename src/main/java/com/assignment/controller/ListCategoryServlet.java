package com.assignment.controller;

import com.assignment.dao.FruitDAO;
import com.assignment.model.Category;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListCategoryServlet",urlPatterns = "/admin/list-category")
public class ListCategoryServlet extends HttpServlet {
    FruitDAO dao = new FruitDAO();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Category> list = dao.getAllCategory();
        request.setAttribute("categories", list);
        request.getRequestDispatcher("/admin/listcategory.jsp").forward(request,response);
    }
}
