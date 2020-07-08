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

@WebServlet(name = "ListFruitServlet", urlPatterns = "/admin/list-fruit")
public class ListFruitServlet extends HttpServlet {
    FruitDAO dao = new FruitDAO();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Fruit> listFruit = dao.getAllFruit();
        request.setAttribute("fruits", listFruit);
        request.getRequestDispatcher("/admin/listfruit.jsp").forward(request, response);
    }
}
