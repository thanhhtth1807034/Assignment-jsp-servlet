package com.assignment.controller;

import com.assignment.dao.FruitDAO;
import com.assignment.model.Category;
import com.assignment.model.Fruit;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UpdateFruitServlet", urlPatterns = "/admin-update-fruit")
public class UpdateFruitServlet extends HttpServlet {
    FruitDAO dao =new FruitDAO();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        double price = Double.parseDouble(request.getParameter("price"));
        String unit = request.getParameter("unit");
        String origin = request.getParameter("origin");
        String thumbnail = request.getParameter("thumbnail");
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));

        Fruit fruit = new Fruit(id,name,description,price,unit,origin,thumbnail,categoryId);
        dao.updateFruit(fruit);
        response.sendRedirect("admin-list-fruit");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Fruit fruit = dao.getFruitById(id);
        request.setAttribute("fruitId", id);
        request.setAttribute("fruits", fruit);
        List<Category> list = dao.getAllCategory();
        request.setAttribute("listCate", list);
        request.getRequestDispatcher("admin/updateFruit.jsp").forward(request, response);
    }
}
