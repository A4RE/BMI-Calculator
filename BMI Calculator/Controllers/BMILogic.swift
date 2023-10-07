//
//  BMILogic.swift
//  BMI Calculator
//
//  Created by Андрей Коваленко on 07.10.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class BMILogic {
    
    var bmi: BMI?
    
    func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: .cyan)
        } else if bmiValue > 18.5 && bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .green)
        } else if bmiValue > 24.9 {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: .red)
        }
    }
    
    func getBMI() -> String {
        return String(format: "%.2f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        guard let bmi = bmi else { return "" }
        return bmi.advice
    }
    
    func getColor() -> UIColor {
        guard let bmi = bmi else { return .white }
        return bmi.color
    }
    
}
