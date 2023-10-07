//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Андрей Коваленко on 07.10.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    var bmiValue: String?
    var adviceValue: String?
    var colorValue: UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmiValue
        adviceLabel.text = adviceValue
        view.backgroundColor = colorValue
    }
    @IBAction func goBackButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
