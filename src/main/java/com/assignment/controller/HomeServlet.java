package com.assignment.controller;

import com.assignment.dao.FruitDAO;
import com.assignment.model.Fruit;
import com.assignment.model.FruitShoppingCart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeServlet",urlPatterns = "/home")
public class HomeServlet extends HttpServlet {
    FruitDAO dao = new FruitDAO();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        FruitShoppingCart fruit = (FruitShoppingCart) session.getAttribute("SHOPPING_CART");
        if(fruit!=null){
            request.setAttribute("carts", fruit.getItems());
            request.setAttribute("tt", fruit.tt());
            List<Fruit> listFruit = dao.getAllFruit();
            request.setAttribute("listFruits", listFruit);
            request.getRequestDispatcher("index.jsp").forward(request,response);
        }
        List<Fruit> listFruit = dao.getAllFruit();
        request.setAttribute("listFruits", listFruit);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
}