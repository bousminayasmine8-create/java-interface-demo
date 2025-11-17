package com.demo;

public class Motorcycle implements Vehicle {
    private String model;

<<<<<<< HEAD
    public Motorcycle(String model) { this.model = model; }

    @Override
    public void start() { System.out.println("La moto " + model + " démarre"); }
    @Override
    public void stop() { System.out.println("La moto " + model + " s'arrête"); }
    @Override
    public String getType() { return "Motorcycle"; }
=======
    public Motorcycle(String model) {
        this.model = model;
    }

    @Override
    public void start() {
        System.out.println("La moto " + model + " démarre");
    }

    @Override
    public void stop() {
        System.out.println("La moto " + model + " s'arrête");
    }

    @Override
    public String getType() {
        return "Motorcycle";
    }
>>>>>>> Ajout de tous les fichiers Java et du pom.xml
}
