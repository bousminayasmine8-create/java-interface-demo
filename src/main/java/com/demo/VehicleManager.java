package com.demo;

import java.util.ArrayList;
import java.util.List;

public class VehicleManager {
    private List<Vehicle> vehicles;

    public VehicleManager() {
        vehicles = new ArrayList<>();
    }

    public void addVehicle(Vehicle vehicle) { vehicles.add(vehicle); }
    public void startAll() { for (Vehicle v : vehicles) v.start(); }
    public void stopAll() { for (Vehicle v : vehicles) v.stop(); }
    public int getTotalVehicles() { return vehicles.size(); }

    public static void main(String[] args) {
        VehicleManager manager = new VehicleManager();
<<<<<<< HEAD
        Scanner scanner = new Scanner(System.in);

        System.out.print("Combien de véhicules voulez-vous ajouter ? ");
        int n = scanner.nextInt();
        scanner.nextLine(); // consommer la ligne

        for (int i = 0; i < n; i++) {
            System.out.println("\nVéhicule " + (i + 1));

            System.out.print("Type (Car/Motorcycle) : ");
            String type = scanner.nextLine();

            System.out.print("Modèle : ");
            String model = scanner.nextLine();

            System.out.print("Couleur : ");
            String color = scanner.nextLine();

            System.out.print("Année : ");
            int year = scanner.nextInt();
            scanner.nextLine(); // consommer la ligne

            if (type.equalsIgnoreCase("Car")) {
                manager.addVehicle(new Car(model, color, year));
            } else if (type.equalsIgnoreCase("Motorcycle")) {
                manager.addVehicle(new Motorcycle(model, color, year));
            } else {
                System.out.println("Type inconnu, ignoré.");
            }
        }

        System.out.println("\nTotal véhicules : " + manager.getTotalVehicles());
        manager.showAllDetails();
=======
        manager.addVehicle(new Car("Toyota"));
        manager.addVehicle(new Motorcycle("Yamaha"));

        System.out.println("Total véhicules: " + manager.getTotalVehicles());
>>>>>>> Mise à jour des classes, pom.xml et ajout du LoginServlet + WAR
        manager.startAll();
        manager.stopAll();
    }
}
