package com.assignment.controller;

import com.assignment.dao.FruitDAO;
import com.assignment.model.Category;
import com.assignment.model.Fruit;
import com.assignment.model.FruitForm;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "AddFruitServlet",urlPatterns = "/admin/add-fruit")
public class AddFruitServlet extends HttpServlet {
    FruitDAO dao = new FruitDAO();

    @Override

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String price = request.getParameter("price");
        String unit = request.getParameter("unit");
        String origin = request.getParameter("origin");
        String thumbnail = request.getParameter("thumbnail");
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        FruitForm fruitForm = new FruitForm(name, description, price, unit, origin, thumbnail);
        if (fruitForm.getErrors().size() > 0) {
            request.setAttribute("errors", fruitForm.getErrors());
            request.getRequestDispatcher("/admin/addfruit.jsp").forward(request, response);
        } else {
        int status=1;
        Fruit fruit = new Fruit(name, description,Double.parseDouble(price), unit, origin, thumbnail, categoryId,status);
          dao.insertFruit(fruit);
            response.sendRedirect("/admin/list-fruit");
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Category> list = dao.getAllCategory();
        request.setAttribute("listCate", list);
        request.getRequestDispatcher("/admin/addfruit.jsp").forward(request,response);

    }


}
