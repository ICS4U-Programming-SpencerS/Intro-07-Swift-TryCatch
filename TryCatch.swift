//
// swift TryCatch.swift.
//
//  Created by Spencer Scarlett
//  Created on 2024-Feb-20
//  Version 1.0
//  Copyright (c) 2024 Spencer Scarlett. All rights reserved.
//
//  Custom try catch.

import Foundation

while true {
    // Opening statement
    print("Program that calculates Volume of a sphere.")
    print("Enter a number:")
    // Normal if statement entered loop error.
    // Created this workaround which acts as both input and check.
    if let input = readLine(), let radiusDouble = Double(input) {
        if radiusDouble <= 0 {
            print("Please enter a number greater than 0.")
            // Ask for another input until valid one.
            continue 
        } else {
            // Main calc.
            let volumeSphere = (4.0/3.0 * Double.pi * pow(radiusDouble, 3))
            // Rounds to 2 decimal places.
            let roundedSphere = Double(round(100 * volumeSphere) / 100)
            print("\(radiusDouble) has a volume of...")
            print("\(roundedSphere) cm^3")
            break 
        }
    } else {
        // Created a try catch system, only way to get input working :\.
        print("Invalid input. Please enter number ABOVE 0.")
    }
}
