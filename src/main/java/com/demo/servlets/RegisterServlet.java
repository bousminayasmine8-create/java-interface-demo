package com.automarket.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Récupérer les données du formulaire
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Ici, tu peux ajouter le code pour enregistrer l'utilisateur dans une DB
        // Mais pour l'instant on simule l'inscription réussie

        // Passer les données à la page JSP
        request.setAttribute("email", email);
        request.setAttribute("password", password);

        // Rediriger vers success.jsp
        request.getRequestDispatcher("success.jsp").forward(request, response);
    }
}

