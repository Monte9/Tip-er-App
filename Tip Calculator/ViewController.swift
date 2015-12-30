//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Monte's Pro 13" on 12/1/15.
//  Copyright © 2015 MonteThakkar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var inputSliderTip: UISlider!

    @IBOutlet weak var tipLabel: UILabel!

    @IBOutlet weak var mealCostTextField: UITextField!
    
    @IBOutlet weak var finalCostLabel: UILabel!
    
    var mealCost : Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mealCostTextField.delegate = self
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    @IBAction func sliderValueChanged(sender: UISlider) {
        let tipPercent = Int(sender.value)
        self.tipLabel.text = "\(tipPercent)"
        updateFinalCost()
    }

    @IBAction func newCostEntered(sender: UITextField) {
        self.mealCost = Float(sender.text!)
        updateFinalCost()
    }
    
    func finalCost() -> Float {
        let tipValue =  (mealCost! * Float(tipLabel.text!)! ) / 100
        return (tipValue + mealCost!)
    }
    
    func updateFinalCost() {
        if mealCost != nil {
            self.finalCostLabel.text = "\(self.finalCost())"
        } else {
            self.finalCostLabel.text = "invalid cost"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

