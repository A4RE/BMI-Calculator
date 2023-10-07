//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Андрей Коваленко on 07.10.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmiValue
        

    }
    @IBAction func goBackButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
