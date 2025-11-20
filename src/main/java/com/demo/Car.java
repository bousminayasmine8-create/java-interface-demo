package com.demo;

public class Car implements Vehicle {
    private String model;
    private String color;
    private int year;

    public Car(String model, String color, int year) {
        this.model = model;
        this.color = color;
        this.year = year;
    }

    @Override
    public void start() {
        System.out.println("La voiture " + model + " démarre");
    }

    @Override
    public void stop() {
        System.out.println("La voiture " + model + " s'arrête");
    }

    @Override
    public String getType() {
        return "Car";
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

