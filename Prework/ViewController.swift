//
//  ViewController.swift
//  Prework
//
//  Created by Diego Martinez on 7/22/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!

    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipSlider: UISlider!
    
    @IBOutlet weak var tipPercentage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func calculateTipSlider(_ sender: Any) {
       
        let bill = Double(billAmountTextField.text!) ?? 0
        let tip = bill * Double(tipSlider.value)
        let total = bill + tip
        let tipPercent = Double(tipSlider.value) * 100
        tipPercentage.text = String(format:"%.2f", tipPercent)
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

