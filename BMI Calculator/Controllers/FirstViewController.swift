//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var weightValue: UILabel!
    
    var bmiLogic = BMILogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightValue.text = twoDecimalsM(sender.value)
        
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightValue.text = twoDecimalsKg(sender.value)
        
        
    }
    
    @IBAction func calculateButtonBMI(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        bmiLogic.calculateBMI(height: height, weight: weight)

        self.performSegue(withIdentifier: "resultVC", sender: self)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultVC" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiLogic.getBMI()
        }
    }
    
    func twoDecimalsM(_ num: Float) -> String {
        let editNumber = String(format: "%.2f", num)
        return editNumber + "m"
    }
    func twoDecimalsKg(_ num: Float) -> String {
        let editNumber = String(format: "%.0f", num)
        return editNumber + "Kg"
    }

    
}



