//
//  strokeWatch.swift
//  project14
//
//  Created by Gannon Barnett on 4/27/17.
//  Copyright © 2017 Barnett. All rights reserved.
//

import Foundation

class strokeWatch {
    private var lastPressed : Double
    private var justPressed : Double
    private var timesElapSec = Array<Double>(repeating: 0, count: 3)
    
    init() {
        lastPressed = 0
        justPressed = 0
    }
    
    func getRate() -> Int?{
        //make sure enough times have been inputted
        guard timesElapSec[2] != 0 else {
            print(timesElapSec)
            return nil
        }
        
        let avgElap = (timesElapSec[0] + timesElapSec[1] + timesElapSec[2]) / 3
        return Int(60 / avgElap)
    }
    
    func push() {
        print(getRate())
        justPressed = NSTimeIntervalSince1970
        
        //0 is latest value, 1 is second, 2 is third
        timesElapSec[2] = timesElapSec[1]
        timesElapSec[1] = timesElapSec[0]
        timesElapSec[0] = lastPressed - justPressed
        
        lastPressed = NSTimeIntervalSince1970
    }
    
}
