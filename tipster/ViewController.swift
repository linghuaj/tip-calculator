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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        //NSUserDefaults store things like application settings, the current user, or a flag for whether a user has already seen a helpful hints popover.
        var defaults = NSUserDefaults.standardUserDefaults()
        var defaultTipIndex = defaults.integerForKey("default_tip_index")
        tipControl.selectedSegmentIndex = defaultTipIndex
    }
    
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentages = [0.18, 0.20, 0.22]
        var billAmount = (billField.text as NSString).doubleValue
        var currTipIndex = tipControl.selectedSegmentIndex
        var currTipPercentage = tipPercentages[currTipIndex]
        var tip = billAmount * currTipPercentage
        var total = billAmount + tip
        tipLabel.text = String (format: "$%.2f", tip)
        totalLabel.text = String (format: "$%.2f", total)
    }
 
    
    @IBAction func onTap(sender: UITapGestureRecognizer) {
        //when tap anywhere on the screen, cancel the number pad triggered by input
        view.endEditing(true)
    }
   



}

