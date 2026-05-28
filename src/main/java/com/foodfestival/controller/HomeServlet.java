package com.foodfestival.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/HomeServlet")

public class HomeServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public HomeServlet() {

        super();
    }

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)

            throws ServletException, IOException {

        String location = request.getParameter("location");

        String date = request.getParameter("date");

        request.setAttribute("location", location);

        request.setAttribute("date", date);

        request.getRequestDispatcher("events.jsp")
               .forward(request, response);
    }
}