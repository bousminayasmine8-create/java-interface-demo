package com.demo.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Vérification simple (à remplacer par une vraie DB)
        if ("admin@automarket.com".equals(email) && "1234".equals(password)) {
            // Login réussi → redirection vers les voitures
            response.sendRedirect("cars.jsp");
        } else {
            // Login échoué → retour login avec erreur
            response.sendRedirect("login.jsp?error=1");
        }
    }
}

