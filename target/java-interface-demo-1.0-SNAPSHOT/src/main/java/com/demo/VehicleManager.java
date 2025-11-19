package com.demo;

import java.util.ArrayList;
import java.util.List;

public class VehicleManager {
    private List<Vehicle> vehicles = new ArrayList<>();

    public void addVehicle(Vehicle vehicle) { vehicles.add(vehicle); }
    public void startAll() { for (Vehicle v : vehicles) v.start(); }
    public void stopAll() { for (Vehicle v : vehicles) v.stop(); }
    public int getTotalVehicles() { return vehicles.size(); }

    public static void main(String[] args) {
        VehicleManager manager = new VehicleManager();
        manager.addVehicle(new Car("Toyota"));
        manager.addVehicle(new Motorcycle("Yamaha"));

        System.out.println("Total véhicules: " + manager.getTotalVehicles());
        manager.startAll();
        manager.stopAll();
    }
}
