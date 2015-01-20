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
    @IBOutlet weak var doneCover: UIImageView!
    
    
    
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

    @IBAction func onEditingDidBegin(sender: AnyObject) {
        let duration = 0.2
        let delay = 0.0
        let options = UIViewAnimationOptions.CurveEaseInOut
        
        UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
            // animate the cover up over the cup people
            self.doneCover.frame = CGRect(x: 0, y: 175, width: 320, height: 395)
            }, completion: { finished in
                // enter code here to do once animation is completed
        })
    }
    
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
        UIView.animateWithDuration(0.4, animations: {
            // animate the cover outta the way
            self.doneCover.frame = CGRect(x: 0, y: 640, width: 320, height: 395)
        })
    }
    
}

