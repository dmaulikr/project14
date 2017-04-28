//
//  Split.swift
//  project14
//
//  Created by Gannon Barnett on 4/27/17.
//  Copyright © 2017 Barnett. All rights reserved.
//

import Foundation

struct Split : CustomStringConvertible{
    let totalSeconds : Double
    let minutes : Int
    let seconds : Double
    
    init(inSeconds secondsInput: Double) {
        totalSeconds = secondsInput
        minutes = Int(totalSeconds / 60)
        seconds = totalSeconds - (60 * Double(minutes))
    }
    
    init(min: Int, sec: Double) {
        minutes = min
        seconds = sec
        totalSeconds = Double(minutes) * 60 + seconds
    }
    
    func getMinutes() -> Int{
        return minutes
    }
    
    func getSeconds() -> Double {
        return seconds
    }
    
    var description: String {
        return String(getMinutes()) + ":" + String(getSeconds())
    }
}
