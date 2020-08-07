//
//  ViewController.swift
//  Tip
//
//  Created by Erik Villavera on 8/5/20.
//  Copyright © 2020 Erik Villavera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var customTextField: UITextField!
    
    @IBOutlet weak var segmentedTipControl: UISegmentedControl!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        billAmountTextField.becomeFirstResponder()
    }
    
    @IBAction func onTap(_ sender: Any) {
    }
    @IBAction func calculateTip(_ sender: Any) {
        let bill = (Double(billAmountTextField.text!) ?? 0)
        let tipArray = [0.15, 0.18, 0.2, 0]
        
        
        var tip = bill * tipArray[segmentedTipControl.selectedSegmentIndex]
        if(segmentedTipControl.selectedSegmentIndex == 3){
            tip = (bill * (Double(customTextField.text!) ?? 0)) / 100
        }
        let total = tip + bill
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalAmountLabel.text = String(format: "$%.2f", total)
    }
    
}

