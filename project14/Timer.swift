//
//  Timer.swift
//  project14
//
//  Created by Gannon Barnett on 4/27/17.
//  Copyright © 2017 Barnett. All rights reserved.
//

import Foundation

class Timer {
    private var startTaskns : Int64 = 0
    private var intermediateTimens : Int = 0
    private var endTaskns : Int64 = 0
    
    private var elapsedTimens : Int64 = 0
    
    private var intermediateTimems : Int {
        return intermediateTimens / 1000000
    }
    
    private var elapsedTimems : Int64 {
        return elapsedTimens / 1000000
    }
    
    func startTimer(){
        elapsedTimens = 0
        startTaskns = Int64(mach_absolute_time())
    }
    
    func resumeTimer() {
        startTaskns = Int64(mach_absolute_time())
    }
    
    func stopTimer() {
        endTaskns = Int64(mach_absolute_time())
        intermediateTimens = getElapsedTimens()
        elapsedTimens += getElapsedTimems()
    }
    
    func getElapsedTimems() -> Int {
        return getElapsedTimens() / 1000000
    }
    
    func getElapsedTimens() -> Int {
        return endTaskns - startTaskns
    }
    
    func getElapsedTimeTenthSeconds() -> Double {
        return Double(getElapsedTimems()) / 100
    }
    
    func getElapsedTimeSeconds() -> Double {
        return Double(elapsedTimems) / 1000
    }
}
