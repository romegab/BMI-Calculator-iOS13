//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ivan Stoilov on 13.08.21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    
    var bmi: BMI = BMI(value: 0.0, advice: "", color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "it will be good to eat more!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }
        else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "your weight is perfect!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        }
        else{
            bmi = BMI(value: bmiValue, advice: "it will be good to eat less", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
    }
    
    func getBMIValue() -> String{
        let result = String(format: "%.1f", bmi.value)
        
        return result
    }
    
    func getColor() -> UIColor{
        return bmi.color
    }
    
    func getAdvice() -> String{
        return bmi.advice
    }
}
