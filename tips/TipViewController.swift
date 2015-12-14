//
//  ViewController.swift
//  tips
//
//  Created by Daham Wang on 12/13/15.
//  Copyright © 2015 codepath. All rights reserved.
//

import UIKit

class TipViewController: UIViewController {
    
    let defaults = NSUserDefaults.standardUserDefaults()

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "0.00"
        totalLabel.text = "$0.00"
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewDidAppear(animated)
        tipControl.selectedSegmentIndex = defaults.integerForKey("myNum")
        billField.text = defaults.stringForKey("myField")
        
        onEditingChange(0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChange(sender: AnyObject) {
        let tipPercentages = [0.18, 0.2, 0.22]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        let billAmount = NSString(string: billField.text!).doubleValue
        
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        defaults.setInteger(tipControl.selectedSegmentIndex, forKey: "myNum")
        defaults.setObject(billAmount, forKey: "myField")

    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

}

