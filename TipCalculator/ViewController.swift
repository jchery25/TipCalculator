//
//  ViewController.swift
//  TipCalculator
//
//  Created by Jonathan Chery on 12/23/16.
//  Copyright © 2016 Jonathan Chery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var dividerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func stepperValueChange(_ sender: UISegmentedControl) {
        var tipPercentages = [0.15, 0.20, 0.25, 0.30]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        var total = bill + tip
        
        let increment = Double(valueLabel.text!)
        total = total / increment!
        dividerLabel.text = String(format: "$%.2f", total)
        
        if Double(valueLabel.text!) == 0 {
            dividerLabel.text = "$0.00"
        }

    }

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        var tipPercentages = [0.15, 0.20, 0.25, 0.30]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        var total = bill + tip
        
        valueLabel.text = Int(sender.value).description
        let increment = Double(valueLabel.text!)
        total = total / increment!
        dividerLabel.text = String(format: "$%.2f", total)
        
        if Double(valueLabel.text!) == 0 {
            dividerLabel.text = "$0.00"
        }
    }
    
    @IBAction func changePercentage(_ sender: Any) {
        var tipPercentages = [0.15, 0.20, 0.25, 0.30]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        var tipPercentages = [0.15, 0.20, 0.25, 0.30]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

