package com.demo;

public class Motorcycle {
    private String brand;
    private String model;
    private int year;

    // Constructeur
    public Motorcycle(String brand, String model, int year) {
        this.brand = brand;
        this.model = model;
        this.year = year;
    }

    // Getters
    public String getBrand() { return brand; }
    public String getModel() { return model; }
    public int getYear() { return year; }

    // Setters
    public void setBrand(String brand) { this.brand = brand; }
    public void setModel(String model) { this.model = model; }
    public void setYear(int year) { this.year = year; }

    // Afficher les infos
    public void displayInfo() {
        System.out.println("Motorcycle: " + brand + " " + model + " (" + year + ")");
    }
}

