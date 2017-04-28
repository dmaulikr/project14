//
//  baseViewController.swift
//  project14
//
//  Created by Gannon Barnett on 4/27/17.
//  Copyright © 2017 Barnett. All rights reserved.
//

import UIKit

class baseViewController : UIViewController {
    
    var watch : strokeWatch = strokeWatch()
    
    @IBAction func StrokeButtonPressed(_ sender: Any) {
        watch.push()
        StrokeLabel.text = String(describing: watch.getRate())
    }
    
    @IBOutlet weak var StrokeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //add any needed code
    }
}
