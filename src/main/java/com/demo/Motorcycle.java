package com.demo;

public class Motorcycle implements Vehicle {
    private String model;

    public Motorcycle(String model) { this.model = model; }

    @Override
<<<<<<< HEAD
    public String getModel() {
        return model;
    }

    @Override
    public String getDetails() {
        return "Motorcycle - Modèle: " + model + ", Couleur: " + color + ", Année: " + year;
    }

=======
    public void start() { System.out.println("La moto " + model + " démarre"); }
>>>>>>> Mise à jour des classes, pom.xml et ajout du LoginServlet + WAR
    @Override
    public void stop() { System.out.println("La moto " + model + " s'arrête"); }
    @Override
<<<<<<< HEAD
    public void start() {
        System.out.println("La moto " + model + " démarre...");
    }

    @Override
    public void stop() {
        System.out.println("La moto " + model + " s'arrête...");
    }
=======
    public String getType() { return "Motorcycle"; }
>>>>>>> Mise à jour des classes, pom.xml et ajout du LoginServlet + WAR
}
