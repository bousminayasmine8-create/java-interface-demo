package com.demo;

public class Car implements Vehicle {
    private String model;

    public Car(String model) { this.model = model; }

    @Override
    public void start() { System.out.println("La voiture " + model + " démarre"); }
    @Override
    public void stop() { System.out.println("La voiture " + model + " s'arrête"); }
    @Override
    public String getType() { return "Car"; }
}
