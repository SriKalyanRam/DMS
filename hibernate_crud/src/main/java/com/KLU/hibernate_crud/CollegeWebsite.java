package com.KLU.hibernate_crud;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class CollegeWebsite {

    public static void main(String[] args) {
        // Initialize the Spring ApplicationContext
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");

        // Retrieve student details
        Student student = (Student) context.getBean("student");

        // Display student details
        System.out.println("Student Details:");
        System.out.println("Name: " + student.getName());
        System.out.println("Roll Number: " + student.getRollNumber());

        // Retrieve counselor details
        Counselor counselor = (Counselor) context.getBean("counselor");

        // Display counselor details
        System.out.println("\nCounselor Details:");
        System.out.println("Name: " + counselor.getName());
        System.out.println("ID: " + counselor.getId());
        System.out.println("Package Details: " + counselor.getPackageDetails().toString());
    }
}
