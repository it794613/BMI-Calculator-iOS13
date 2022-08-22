//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class calculaterViewController: UIViewController {

    var bmiValue = "0.0"
    
    var CalculaterBrain = calculaterBrain()
    
    @IBOutlet var heightText: UILabel!
    @IBOutlet var weightText: UILabel!
    @IBOutlet var heightValue: UISlider!
    @IBOutlet var weightValue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightText.text = "\(height)m"
    }
    @IBAction func weightSliderChange(_ sender: UISlider) {
        let weight = String(format: "%.f", sender.value)
        weightText.text = "\(weight)kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let value1 = heightValue.value
        let value2 = weightValue.value
        CalculaterBrain.calculateBmi(height: value1, weight: value2)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = CalculaterBrain.getBmiValue()
            destinationVC.advice = CalculaterBrain.getAdvice()
            destinationVC.color = CalculaterBrain.getColor()
        }
    }
    
}

