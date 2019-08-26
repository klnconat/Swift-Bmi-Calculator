//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Onat KILINÇ on 16.06.2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?

    mutating func calculateBmi(_ height: Float, _ weight: Float) {
        let tempBmiValue = weight / (height * height)
        if(tempBmiValue < 18.5) {
            bmi = BMI(value: tempBmiValue, advice: "Underweight", color: UIColor.red
            )
            print("underweight")
        } else if (tempBmiValue < 24.9) {
            bmi = BMI(value: tempBmiValue, advice: "Normal", color: UIColor.green)
            print("normal")
        } else {
            bmi = BMI(value: tempBmiValue, advice: "Overweight", color: UIColor.red)
            print("Overweight")
        }
    }
    func getBmiValue() -> String {
        return String(format: "%.1f", bmi?.value ?? "0.0")
    }
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
