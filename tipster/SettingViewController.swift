//
//  SettingViewController.swift
//  tipster
//
//  Created by Linghua Jin on 9/6/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //load the current tip index from the local storage.
        var defaults = NSUserDefaults.standardUserDefaults()
        var defaultTipIndex = defaults.integerForKey("default_tip_index")
        tipControl.selectedSegmentIndex = defaultTipIndex
    }
    
    //when change setting, load it to NSUserDefaults as local storage.
    @IBAction func onChangeDefaultTip(sender: AnyObject) {
        var changedDefaultTip = tipControl.selectedSegmentIndex;
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(changedDefaultTip, forKey: "default_tip_index")
        defaults.synchronize()
    }

    @IBAction func onClose(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }

}
