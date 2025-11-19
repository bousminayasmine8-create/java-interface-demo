package com.demo;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if(username.equals("admin") && password.equals("1234")) {
            response.sendRedirect("dashboard.html");
        } else {
            response.getWriter().println("Nom d'utilisateur ou mot de passe incorrect !");
        }
    }
}
