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
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "UpdateCartServlet",urlPatterns = "/update-cart")
public class UpdateCartServlet extends HttpServlet {
    FruitDAO dao = new FruitDAO();
    private static final String SHOPPING_CART_ATTRIBUTE = "SHOPPING_CART";
    private static final Logger LOGGER = Logger.getLogger(FruitShoppingCart.class.getSimpleName());
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int frurtid = Integer.parseInt(request.getParameter("frurtid"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        if (quantity <= 0) {
            response.sendError(HttpServletResponse.SC_NOT_FOUND, "Invalid Quantity");
        }
        Fruit fruit = dao.getFruitById(frurtid);
        if (fruit == null) {
            response.sendError(HttpServletResponse.SC_NOT_FOUND, "Product's' not found");
        }
        HttpSession session = request.getSession();
        FruitShoppingCart cart = LoadShoppingCart(session);
        cart.updateProduct(fruit,quantity);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    private FruitShoppingCart LoadShoppingCart(HttpSession session) {
        FruitShoppingCart cart = null;
        try {
            cart = (FruitShoppingCart) session.getAttribute(SHOPPING_CART_ATTRIBUTE);
        } catch (Exception ex) {
            LOGGER.log(Level.SEVERE, String.format("Can't get cart from session: "), ex);
        }
        if (cart == null) {
            cart = new FruitShoppingCart();
        }
        return cart;
    }
}
