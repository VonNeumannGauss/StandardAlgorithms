//
//  Unknown.swift
//  StandardAlgorithms
//
//  Created by Zachary Marinov on 11/20/20.
//  Copyright © 2020 VonNeumannGauss. All rights reserved.
//

import Foundation

class Unknown {
    func summingArray(data: [Int]) -> Int {
        let length = data.count
        
        if length == 0 {
            return 0
        } else {
            return data[0] + data[length-1]
        }
    }
    
    func findMode(data: [Int]) -> Int {
        let length = data.count
        if length % 2 == 0 {
            let average = (data[(length/2)-1] + data[(length/2)])/2
            return average 
        } else {
            return data[length/2]
        }
    }
}


