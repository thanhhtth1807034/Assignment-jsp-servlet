package com.assignment.controller;

import com.assignment.model.CartItem;
import com.assignment.model.Fruit;
import com.assignment.model.FruitShoppingCart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.CacheRequest;
import java.util.List;

@WebServlet(name = "ShopingCartServlet", urlPatterns = "/shoping-cart")
public class ShopingCartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        FruitShoppingCart fruit = (FruitShoppingCart) session.getAttribute("SHOPPING_CART");
        request.setAttribute("carts", fruit.getItems());
        request.setAttribute("tt", fruit.tt());
        request.getRequestDispatcher("shoping-cart.jsp").forward(request, response);
    }
}
