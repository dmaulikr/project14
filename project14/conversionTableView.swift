//
//  conversionTableView.swift
//  project14
//
//  Created by Gannon Barnett on 4/28/17.
//  Copyright © 2017 Barnett. All rights reserved.
//

import Foundation
import UIKit

class conversionTableView : UIViewController {
    var c : conversionTable = conversionTable()
    
    //SPLIT
    @IBOutlet weak var SplitMinTextField: UITextField!
    @IBOutlet weak var SplitMinLabel: UILabel!
    
    var splitMin : Int? {
        if SplitMinTextField.text != nil {
            let m = SplitMinTextField.text!
            return Int(m)
        }
        return nil
    }
    
    @IBOutlet weak var SplitSecTextField: UITextField!
    @IBOutlet weak var SplitSecLabel: UILabel!
    
    var splitSec : Double? {
        if let s = SplitSecTextField.text {
            return Double(s)
        }
        return nil
    }
    
    var split : Time? {
        if splitMin != nil && splitSec != nil {
            return Time(min: splitMin!, sec: splitSec!)
        }
        return nil
    }
    
    //DISTANCE
    @IBOutlet weak var DistanceTextField: UITextField!
    @IBOutlet weak var DistanceTextLabel: UILabel!
    
    var distance : Int? {
        if let d = DistanceTextField.text {
            return Int(d)
        }
        return nil
    }
    
    //TIME
    @IBOutlet weak var TimeMinTextField: UITextField!
    @IBOutlet weak var TimeMinLabel: UILabel!
    
    var timeMin : Int? {
        if let m = TimeMinTextField.text {
            return Int(m)
        }
        return nil
    }
    
    @IBOutlet weak var TimeSecTextField: UITextField!
    @IBOutlet weak var TimeSecLabel: UILabel!
    
    var timeSec : Double? {
        if let s = TimeSecTextField.text {
            return Double(s)
        }
        return nil
    }
    
    var time : Time? {
        if timeMin != nil && timeSec != nil {
            return Time(min: timeMin!, sec: timeSec!)
        }
        return nil
    }
    
    @IBAction func CalculatePressed(_ sender: UIButton) {
        c.calculate(s: split, t: time, d: distance)
        print(c.getDistance())
        print(c.getSplit())
        print(c.getTime())
        DistanceTextLabel.text = String(c.getDistance())
        TimeSecLabel.text = String(describing: c.getTime())
        SplitSecLabel.text = String(describing: c.getSplit())
    }
}



