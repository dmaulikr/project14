//
//  strokeWatch.swift
//  project14
//
//  Created by Gannon Barnett on 4/27/17.
//  Copyright © 2017 Barnett. All rights reserved.
//

import Foundation

class strokeWatch {
    private var t : Timer = Timer()
    private var timesElapSec = Array<Double>(repeating: 0, count: 3)
    
    init(){
        t.startTimer()
    }
    
    func getRate() -> Int?{
        //make sure enough times have been inputted
        guard timesElapSec[2] != 0 else {
            return nil
        }
        
        // let avgElap = timesElapSec.reduce(0, {$0 + $1})
        return Int(60 / avgElap)
    }
    
    func push() {
        t.stopTimer()
        
        //0 is latest value, 1 is second, 2 is third
        timesElapSec[2] = timesElapSec[1]
        timesElapSec[1] = timesElapSec[0]
        timesElapSec[0] = t.getElapsedTimeSeconds()
        
        t.startTimer()
    }
    
}
