//
//  ViewController.swift
//  tipster
//
//  Created by Linghua Jin on 9/6/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBAction func onEditingChanged(sender: AnyObject) {
        var billAmount = (billField.text as NSString).doubleValue
        
        var tipPercentages = [0.18, 0.20, 0.22]
        var currTipIndex = tipControl.selectedSegmentIndex
        var currTipPercentage = tipPercentages[currTipIndex]
        
        var tip = billAmount * currTipPercentage
        var total = billAmount + tip
        
        
        
        tipLabel.text = String (format: "$%.2f", tip)
        totalLabel.text = String (format: "$%.2f", total)
        println("BB")
        // totalLabel.text = billAmount
        
    }
    

 
    
    @IBAction func onTap(sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

