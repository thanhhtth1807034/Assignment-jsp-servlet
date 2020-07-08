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

@WebServlet(name = "FruitDetailServlet",urlPatterns = "/shop-detail")
public class FruitDetailServlet extends HttpServlet {
    FruitDAO dao =new FruitDAO();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Fruit fruit = dao.getFruitById(id);
        request.setAttribute("fruitId", id);
        request.setAttribute("fruits", fruit);
        request.getRequestDispatcher("shop-details.jsp").forward(request,response);
    }
}
