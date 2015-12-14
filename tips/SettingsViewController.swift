//
//  SettingsViewController.swift
//  tips
//
//  Created by Daham Wang on 12/13/15.
//  Copyright © 2015 codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    // initialize memory
    let defaults = NSUserDefaults.standardUserDefaults()
    
    // initialize this panel
    @IBOutlet weak var tipControl_2: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // store the date to memory on closing this page
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        defaults.setDouble(NSDate().timeIntervalSince1970, forKey: "myDate")
    }
    
    // keep the field equal to whatever it was set
    // in TipViewController
    override func viewWillAppear(animated: Bool) {
        super.viewDidAppear(animated)
        tipControl_2.selectedSegmentIndex = defaults.integerForKey("myNum")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    // store tipControl in memory (to be re-used in the
    // ViewController page)
    @IBAction func onEditingChange_2(sender: AnyObject) {
        defaults.setInteger(tipControl_2.selectedSegmentIndex, forKey: "myNum")
    }
 
}
