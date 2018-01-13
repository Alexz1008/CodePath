//
//  SettingsViewController.swift
//  tippy
//
//  Created by Alexander Zhou on 1/11/18.
//  Copyright © 2018 Alex Zhou. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet var SettingsView: UIView!
    @IBOutlet weak var TipAmountLabel: UILabel!
    @IBOutlet weak var ColorLabel: UILabel!
    @IBOutlet weak var DefaultColorControl: UISegmentedControl!
    @IBOutlet weak var DefaultTipControl: UISegmentedControl!
    let defaults = NSUserDefaults.standardUserDefaults()

    override func viewDidLoad() {
        super.viewDidLoad()
        DefaultTipControl.selectedSegmentIndex = defaults.integerForKey("defaultTip")
        DefaultColorControl.selectedSegmentIndex = defaults.integerForKey("defaultColor")

        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(animated:Bool) {
        super.viewWillAppear(false)
        
        // Load default color scheme
        if defaults.integerForKey("defaultColor") == 0 {
            SettingsView.backgroundColor = .whiteColor()
            TipAmountLabel.textColor = .blackColor()
            ColorLabel.textColor = .blackColor()
            DefaultTipControl.tintColor = .blueColor()
            DefaultColorControl.tintColor = .blueColor()
        }
        else if defaults.integerForKey("defaultColor") == 1 {
            SettingsView.backgroundColor = .darkGrayColor()
            TipAmountLabel.textColor = .lightGrayColor()
            ColorLabel.textColor = .lightGrayColor()
            DefaultTipControl.tintColor = .whiteColor()
            DefaultColorControl.tintColor = .whiteColor()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onDefaultChange(sender: AnyObject) {
        
        defaults.setInteger(DefaultTipControl.selectedSegmentIndex, forKey: "defaultTip")
    }
    @IBAction func onColorChange(sender: AnyObject) {
        defaults.setInteger(DefaultColorControl.selectedSegmentIndex, forKey: "defaultColor")
        
        // Load default color scheme
        if defaults.integerForKey("defaultColor") == 0 {
            SettingsView.backgroundColor = .whiteColor()
            TipAmountLabel.textColor = .blackColor()
            ColorLabel.textColor = .blackColor()
            DefaultTipControl.tintColor = .blueColor()
            DefaultColorControl.tintColor = .blueColor()
        }
        else if defaults.integerForKey("defaultColor") == 1 {
            SettingsView.backgroundColor = .darkGrayColor()
            TipAmountLabel.textColor = .lightGrayColor()
            ColorLabel.textColor = .lightGrayColor()
            DefaultTipControl.tintColor = .whiteColor()
            DefaultColorControl.tintColor = .whiteColor()
        }
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
