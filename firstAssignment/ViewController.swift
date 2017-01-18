//
//  ViewController.swift
//  firstAssignment
//
//  Created by Enoch Ko on 1/17/17.
//  Copyright © 2017 ASU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightField: UITextField!
    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateButton(_ sender: UIButton) {
        let height = Float(self.heightField.text!)!
        let weight = Float(self.weightField.text!)!
        let bmi = (weight/((height)*(height)))*703
        self.bmiLabel.text = String(format: "%.5f", bmi)
        if bmi < 18 {
            self.resultLabel.text = "You are Underweight"
            self.resultLabel.textColor = UIColor.blue
        }else if bmi < 25 && bmi >= 18{
            self.resultLabel.text = "You are Normal"
            self.resultLabel.textColor = UIColor.green
        }else if bmi <= 30 && bmi >= 25{
            self.resultLabel.text = "You are Pre-Obese"
            self.resultLabel.textColor = UIColor.purple
        }else if bmi > 30{
            self.resultLabel.text = "You are Obese"
            self.resultLabel.textColor = UIColor.red
        }
        
        
    }

}

