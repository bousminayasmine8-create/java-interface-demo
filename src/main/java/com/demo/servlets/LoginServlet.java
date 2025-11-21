package com.demo.servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // TEST simple
        if (username.equals("admin") && password.equals("admin")) {
            response.sendRedirect("welcome.html");
        } else {
            response.sendRedirect("login.html");
        }
    }
}
