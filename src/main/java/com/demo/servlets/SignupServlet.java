package com.demo.servlets;

import com.demo.VehicleManager;
import com.demo.Motorcycle;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
    private VehicleManager vehicleManager = new VehicleManager();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String brand = request.getParameter("brand");
        String model = request.getParameter("model");
        int year = Integer.parseInt(request.getParameter("year"));

        Motorcycle motorcycle = new Motorcycle(brand, model, year);
        vehicleManager.addMotorcycle(motorcycle);

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h2>Motorcycle added successfully!</h2>");
        out.println("<a href='index.html'>Go back</a>");
    }
}
