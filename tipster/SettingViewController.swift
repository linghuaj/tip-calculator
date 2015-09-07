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
    
    
    @IBAction func onChangeDefaultTip(sender: AnyObject) {
        var changedDefaultTip = tipControl.selectedSegmentIndex;
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(changedDefaultTip, forKey: "default_tip_index")
        defaults.synchronize()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onClose(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
