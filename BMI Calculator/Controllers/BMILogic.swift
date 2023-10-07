//
//  BMILogic.swift
//  BMI Calculator
//
//  Created by Андрей Коваленко on 07.10.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation

class BMILogic {
    var bmi: Float = 0.0
    
    func calculateBMI(height: Float, weight: Float) {
        bmi = weight / pow(height, 2)
    }
    
    func getBMI() -> String {
        return String(format: "%.2f", bmi)
    }
}
