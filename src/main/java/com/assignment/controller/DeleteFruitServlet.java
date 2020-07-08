package com.assignment.controller;

import com.assignment.dao.FruitDAO;
import com.assignment.model.Fruit;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteFruitServlet", urlPatterns = "/admin/delete-fruit")
public class DeleteFruitServlet extends HttpServlet {
    FruitDAO dao = new FruitDAO();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        int staus = Integer.parseInt(request.getParameter("staus"));
        dao.deleteFruit(id,staus);
        response.sendRedirect("admin-list-fruit");

    }
}
