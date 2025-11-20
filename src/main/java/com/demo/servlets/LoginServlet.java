package com.demo.servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Redirige vers la page login.html si quelqu’un tape /login dans le navigateur
        response.sendRedirect("login.html");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Exemple simple de vérification
        if ("admin".equals(username) && "1234".equals(password)) {
            response.sendRedirect("dashboard.html"); // succès → dashboard
        } else {
            response.sendRedirect("login.html?error=1"); // échec → login
        }
    }
}

