package com.assignment.controller;

import com.assignment.dao.FruitDAO;
import com.assignment.model.Fruit;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeServlet",urlPatterns = "/home")
public class HomeServlet extends HttpServlet {
    FruitDAO dao = new FruitDAO();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Fruit> listFruit = dao.getAllFruit();
        request.setAttribute("listFruits", listFruit);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
}