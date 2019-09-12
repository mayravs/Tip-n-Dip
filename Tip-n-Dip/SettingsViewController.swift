//
//  SettingsViewController.swift
//  Tip-n-Dip
//
//  Created by Mayra Vázquez-Sánchez on 9/8/19.
//  Copyright © 2019 MVS. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func setDefaultTip(_ sender: Any) {
        let tipPercentages = [0, 1, 2]
        let tip = tipPercentages[defaultTipControl.selectedSegmentIndex]
        let defaults = UserDefaults.standard
        defaults.set(tip, forKey: "defaultTip" )
        defaults.synchronize()
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
