package com.demo;

public class Motorcycle implements Vehicle {
    private String model;
    private String color;
    private int year;

    public Motorcycle(String model, String color, int year) {
        this.model = model;
        this.color = color;
        this.year = year;
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

    @Override
    public String getModel() {
        return model;
    }

    @Override
    public String getDetails() {
        return "Modèle: " + model + ", Couleur: " + color + ", Année: " + year;
    }
}

