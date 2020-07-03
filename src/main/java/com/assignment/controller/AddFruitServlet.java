package com.assignment.controller;

import com.assignment.dao.FruitDAO;
import com.assignment.model.Fruit;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddFruitServlet",urlPatterns = "/admin/add-fruit")
public class AddFruitServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        FruitDAO dao = new FruitDAO();
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        double price = Double.parseDouble(request.getParameter("price"));
        String unit = request.getParameter("unit");
        String origin = request.getParameter("origin");
        String thumbnail = request.getParameter("thumbnail");
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));

        Fruit fruit = new Fruit(name, description, price, unit, origin, thumbnail, categoryId);
        dao.insertFruit(fruit);
        response.sendRedirect("list-fruit");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("addfruit.jsp").forward(request,response);

    }
}
