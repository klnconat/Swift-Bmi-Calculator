//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Onat KILINÇ on 12.06.2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmi: String?
    var advice: String?
    var color: UIColor?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmi
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func onRecalculateButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }

}
