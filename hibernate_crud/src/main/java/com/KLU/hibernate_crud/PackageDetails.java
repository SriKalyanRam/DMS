package com.KLU.hibernate_crud;

public class PackageDetails {
    private String packageName;
    private double packageCost;

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public void setPackageCost(double packageCost) {
        this.packageCost = packageCost;
    }

    @Override
    public String toString() {
        return "Package Name: " + packageName + ", Package Cost: " + packageCost;
    }
}
