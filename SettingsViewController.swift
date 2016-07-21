//
//  SettingsViewController.swift
//  TipCalc
//
//  Created by Katerina Hanson on 7/20/16.
//  Copyright © 2016 Katerina Hanson. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipPercent: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        let defaults = NSUserDefaults.standardUserDefaults()
        defaultTipPercent.selectedSegmentIndex = defaults.integerForKey("defaultTipIndex")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func defaultTipChanged(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(defaultTipPercent.selectedSegmentIndex, forKey: "defaultTipIndex")
        defaults.synchronize()
    }


}
