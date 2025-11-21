package com.demo;

import java.util.ArrayList;
import java.util.List;

public class VehicleManager {
    private List<Motorcycle> motorcycles;

    public VehicleManager() {
        motorcycles = new ArrayList<>();
    }

    public void addMotorcycle(Motorcycle m) {
        motorcycles.add(m);
    }

    public List<Motorcycle> getMotorcycles() {
        return motorcycles;
    }
}


