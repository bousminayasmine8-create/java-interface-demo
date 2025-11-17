package com.demo;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class VehicleManager {
    private List<Vehicle> vehicles = new ArrayList<>();

    public void addVehicle(Vehicle vehicle) {
        vehicles.add(vehicle);
    }

    public void startAll() {
        for (Vehicle v : vehicles) {
            v.start();
        }
    }

    public void stopAll() {
        for (Vehicle v : vehicles) {
            v.stop();
        }
    }

    public int getTotalVehicles() {
        return vehicles.size();
    }

    public void showAllDetails() {
        for (Vehicle v : vehicles) {
            if (v instanceof Car) {
                System.out.println("Voiture : " + ((Car) v).getDetails());
            } else if (v instanceof Motorcycle) {
                System.out.println("Moto : " + ((Motorcycle) v).getDetails());
            }
        }
    }

    public static void main(String[] args) {
        VehicleManager manager = new VehicleManager();
        Scanner scanner = new Scanner(System.in);
        String type, model, color;
        int year;

        System.out.println("Combien de véhicules voulez-vous ajouter ?");
        int n = scanner.nextInt();
        scanner.nextLine(); // consommer la ligne

        for (int i = 0; i < n; i++) {
            System.out.println("Véhicule " + (i + 1));
            System.out.print("Type (Car/Motorcycle) : ");
            type = scanner.nextLine();
            System.out.print("Modèle : ");
            model = scanner.nextLine();
            System.out.print("Couleur : ");
            color = scanner.nextLine();
            System.out.print("Année : ");
            year = scanner.nextInt();
            scanner.nextLine(); // consommer la ligne

            if (type.equalsIgnoreCase("Car")) {
                manager.addVehicle(new Car(model, color, year));
            } else if (type.equalsIgnoreCase("Motorcycle")) {
                manager.addVehicle(new Motorcycle(model, color, year));
            } else {
                System.out.println("Type inconnu, véhicule ignoré !");
            }
        }

        System.out.println("\nTotal véhicules: " + manager.getTotalVehicles());
        manager.showAllDetails();
        manager.startAll();
        manager.stopAll();

        scanner.close();
    }
}

