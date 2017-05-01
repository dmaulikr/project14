//
//  strokeWatchView.swift
//  project14
//
//  Created by Gannon Barnett on 5/1/17.
//  Copyright © 2017 Barnett. All rights reserved.
//

import UIKit

class strokeWatchView : UIViewController {
    
    var watch = StrokeWatch()
    
    @IBOutlet weak var StrokeRateLabel: UILabel!
    
    @IBAction func StrokeButtonPressed(_ sender: UIButton) {
        watch.push()
        guard watch.getRate() != nil else{
           StrokeRateLabel.text = "0"
            return
        }
        
        guard watch.getRate()! < 500 else{
            StrokeRateLabel.text = "500"
            return
        }
        
        StrokeRateLabel.text = String(describing: watch.getRate()!)
    }
    
}
