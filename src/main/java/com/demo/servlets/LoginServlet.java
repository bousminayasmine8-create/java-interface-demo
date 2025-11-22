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

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Vérification simple
        if ("admin".equals(username) && "admin".equals(password)) {
            response.sendRedirect("welcome.html");
        } else {
            response.getWriter().println("<h3>Login ou mot de passe incorrect!</h3>");
            response.getWriter().println("<a href='login.html'>Réessayer</a>");
        }
    }
}

