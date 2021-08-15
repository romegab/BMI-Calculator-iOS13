//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var metersLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        metersLabel.text = "0m"
        weightLabel.text = "0kg"
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let heightSelected: Float = sender.value
        
        metersLabel.text = String(format: "%.2f", heightSelected) + "m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weightSelected: Float = sender.value
        
        weightLabel.text = String(format: "%.0f", weightSelected) + "kg"
        
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let weight: Float = weightSlider.value
        let height: Float = heightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        print(calculatorBrain.getBMIValue())
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
            
        }
    }
}

