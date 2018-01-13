//
//  ViewController.swift
//  tippy
//
//  Created by Alexander Zhou on 12/26/17.
//  Copyright © 2017 Alex Zhou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet var mainView: UIView!
    @IBOutlet weak var lineView: UIView!
    let defaults = NSUserDefaults.standardUserDefaults()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Animate the loading screen
        self.view.alpha = 0
        UIView.animateWithDuration(0.4) { () -> Void in
            self.view.alpha = 1
        }
        
        // Load default settings
        let defaultTip = defaults.integerForKey("defaultTip")
        tipControl.selectedSegmentIndex = defaultTip
        billField.becomeFirstResponder()
        
    }
    
    override func viewWillAppear(animated:Bool) {
        super.viewWillAppear(false)
        
        // Load default color scheme
        if defaults.integerForKey("defaultColor") == 0 {
            mainView.backgroundColor = .whiteColor()
            tipLabel.textColor = .blackColor()
            totalLabel.textColor = .blackColor()
            tipControl.tintColor = .blueColor()
            lineView.backgroundColor = .blackColor()
        }
        else if defaults.integerForKey("defaultColor") == 1 {
            mainView.backgroundColor = .darkGrayColor()
            tipLabel.textColor = .lightGrayColor()
            totalLabel.textColor = .lightGrayColor()
            tipControl.tintColor = .whiteColor()
            lineView.backgroundColor = .lightGrayColor()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
        
    }

    @IBAction func calculateTip(sender: AnyObject) {
        
        let tipPercentages = [0.18, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    

}

