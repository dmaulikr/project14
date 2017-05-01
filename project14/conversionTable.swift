//
//  conversionTable.swift
//  project14
//
//  Created by Gannon Barnett on 4/27/17.
//  Copyright © 2017 Barnett. All rights reserved.
//

import Foundation

class conversionTable {
    private var split : Time? //time per 500 meters
    private var time : Time?  //total seconds of workout
    private var distance : Int? //total meters of workout
    
    private var rate : Int?     //strokes per one min, 60 sec
    
    init() {
        split = nil
        time = nil
        distance = nil
        rate = nil
    }
    
    func calculate(s : Time?, t : Time?, d : Int?) {
        setSplit(to: s)
        setTime(to: t)
        setDistance(to: d)
        
        if split == nil { split = getSplit() }
        
        if time == nil { time = getTime() }
        
        if distance == nil { distance = getDistance() }
    }
    
    private func setSplit(to split: Time?) {
        self.split = split
    }
    
    private func setTime(to time: Time?) {
        self.time = time
    }
    
    private func setDistance(to distance: Int?) {
        self.distance = distance
    }
    
    func getSplit() -> Time {
        //returns split in seconds
        if split == nil {
            //precondition: distance and time are filled
            // (t/m) * m = s
            let secPmeter : Double = time!.totalSeconds / Double(distance!)
            split = Time(inSeconds: secPmeter * 500)
        }
        
        return split!
    }
    
    func getDistance() -> Int {
        //returns distance in m
        if distance == nil {
            //precondition: split and time are filled
            //split / 500 = seconds per meter
            //meters per second * seconds = distance
            let secPmeter : Double = split!.totalSeconds / 500
            let meterPsec : Double = 1 / secPmeter
            distance = Int(meterPsec * time!.totalSeconds)
        }
        return distance!
    }
    
    func getTime() -> Time {
        //returns time in seconds
        if time == nil{
            //precondition: split and distance are filled
            time = Time(inSeconds: Double(distance!) / 500)
            time = Time(inSeconds: time!.totalSeconds * split!.totalSeconds)
        }
        
        return time!
    }
    
    func getMetersPerStroke() -> Double? {
        guard rate != nil else {
            return nil
        }
        guard time != nil else {
            return nil
        }
        guard distance != nil else {
            return nil
        }
        let totalStrokes = Double(rate!) * time!.totalSeconds / 60
        return Double(distance!) / totalStrokes
    }
    
}






