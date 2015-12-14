//
//  TipViewController.swift
//  tips
//
//  Created by Daham Wang on 12/13/15.
//  Copyright © 2015 codepath. All rights reserved.
//

import UIKit

class TipViewController: UIViewController {
    
    // initialize memory
    let defaults = NSUserDefaults.standardUserDefaults()

    // initialize panels and fields
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!

    // tip and total are initialized to 0 onload
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "0.00"
        totalLabel.text = "$0.00"
        
        billField.becomeFirstResponder()
    }
    
    // if time elapsed is less than 10 minutes, 
    //   set tipControl and billField equal to memory
    //   call onEditingChange()
    override func viewWillAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let prevTime = defaults.doubleForKey("myDate")
        let currTime = NSDate().timeIntervalSince1970

        if currTime - prevTime < 600 {
            tipControl.selectedSegmentIndex = defaults.integerForKey("myNum")
            billField.text = defaults.stringForKey("myField")
            onEditingChange(0)
        }
    }
    
    // store the date to memory on closing this page
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        defaults.setDouble(NSDate().timeIntervalSince1970, forKey: "myDate")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // update fields based on tipControl and billField
    // store tipControl and billField to memory
    @IBAction func onEditingChange(sender: AnyObject) {
        let tipPercentages = [0.18, 0.2, 0.22]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        let billAmount = NSString(string: billField.text!).doubleValue
        
        // found this gem on
        // http://nshipster.com/nsformatter/
        let formatter = NSNumberFormatter()
        formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        formatter.locale = NSLocale(localeIdentifier: "en_US")
        
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        
        tipLabel.text = formatter.stringFromNumber(tip)
        totalLabel.text = formatter.stringFromNumber(total)
        
        defaults.setInteger(tipControl.selectedSegmentIndex, forKey: "myNum")
        defaults.setObject(billAmount, forKey: "myField")
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

