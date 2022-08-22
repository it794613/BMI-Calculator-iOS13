//
//  File.swift
//  BMI Calculator
//
//  Created by 최진용 on 2022/08/20.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct calculaterBrain{
    var bmi : BMI?
    
    mutating func calculateBmi(height: Float, weight: Float){
        let bmiValue = weight/(height*height)
            if bmiValue < 18.5{
                bmi = BMI(value: bmiValue, advice: "under Weight!! eat more", color: UIColor(red: 0, green: 255, blue: 255, alpha: 1.0))
            }
            else if bmiValue < 24.9{
                bmi = BMI(value: bmiValue, advice: "you are in good condition", color: UIColor(red: 051, green: 255, blue: 051, alpha: 1.0))
            }else{
                bmi = BMI(value: bmiValue, advice: "Over Weight!! lose weight", color:UIColor(red: 255, green: 051, blue: 0, alpha: 1.0))
            }
    }
    
    func getBmiValue()->String{
            let bmiString = String(format: "%.2f", bmi?.value ?? "0.0")
            return bmiString
    }

    func getColor()->UIColor{
        return bmi?.color ?? UIColor(red: 255, green: 255, blue: 255, alpha: 1)
    }
    func getAdvice()->String{
        return bmi?.advice ?? "no advice"
    }
}
