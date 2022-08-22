//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by 최진용 on 2022/08/18.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue : String?
    var advice : String?
    var color : UIColor?
    
    @IBOutlet var adviceLable: UILabel!
    @IBOutlet var bmiLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLable.text = bmiValue
        adviceLable.text = advice
        view.backgroundColor = color
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
