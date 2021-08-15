//
//  ResutViewController.swift
//  BMI Calculator
//
//  Created by Ivan Stoilov on 13.08.21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String = ""
    var advice: String = ""
    var color: UIColor  = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    
    @IBOutlet weak var bmiLable: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var resultBackground: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLable.text = bmiValue
        adviceLabel.text = advice
        resultBackground.backgroundColor = color

    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
}
