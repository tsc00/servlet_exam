package com.testservlet.web;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;


public class CercarServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        ArrayList<Restaurants> restaurants = null;
        String cercar = request.getParameter("cercar");
        restaurants = ReadDB.readRestaurants(cercar);

        response.setContentType("text/html");
        request.setAttribute("cerca",restaurants);
        request.getRequestDispatcher("cercar.jsp").forward(request, response);

    }
}
