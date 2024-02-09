package com.KLU.hibernate_crud;

public class Counselor {
    private String name;
    private String id;
    private PackageDetails packageDetails;

    public void setName(String name) {
        this.name = name;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setPackageDetails(PackageDetails packageDetails) {
        this.packageDetails = packageDetails;
    }

    public String getName() {
        return name;
    }

    public String getId() {
        return id;
    }

    public PackageDetails getPackageDetails() {
        return packageDetails;
    }
}