//
//  ViewController.swift
//  tips
//
//  Created by Jef Cunningham on 1/14/15.
//  Copyright (c) 2015 Snowball. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var mehTipLabel: UILabel!
    @IBOutlet weak var mehTotalLabel: UILabel!
    @IBOutlet weak var goodTipLabel: UILabel!
    @IBOutlet weak var goodTotalLabel: UILabel!
    @IBOutlet weak var epicTipLabel: UILabel!
    @IBOutlet weak var epicTotalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mehTipLabel.text = "-"
        mehTotalLabel.text = "-"
        goodTipLabel.text = "-"
        goodTotalLabel.text = "-"
        epicTipLabel.text = "-"
        epicTotalLabel.text = "-"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        println("User editing bill")
        
        var billAmount = NSString(string: billField.text).doubleValue
        
        var mehTip = billAmount * 0.15
        var mehTotal = billAmount + mehTip
        var goodTip = billAmount * 0.18
        var goodTotal = billAmount + goodTip
        var epicTip = billAmount * 0.2
        var epicTotal = billAmount + epicTip
        
        mehTipLabel.text = String(format: "$%.2f", mehTip)
        mehTotalLabel.text = String(format: "$%.2f", mehTotal)
        goodTipLabel.text = String(format: "$%.2f", goodTip)
        goodTotalLabel.text = String(format: "$%.2f", goodTotal)
        epicTipLabel.text = String(format: "$%.2f", epicTip)
        epicTotalLabel.text = String(format: "$%.2f", epicTotal)
        
        
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
}

