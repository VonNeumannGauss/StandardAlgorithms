//
//  Searching.swift
//  StandardAlgorithms
//
//  Created by Zachary Marinov on 11/23/20.
//  Copyright © 2020 VonNeumannGauss. All rights reserved.
//

import Foundation

class Searching {
    func linearSearch(data:[Int], itemToFind: Int) -> Bool {
        var counter = 0
        var isFound = false
        while !isFound && (counter <= data.count - 1) {
            if data[counter] == itemToFind {
                isFound = true
            }
            counter += 1
        }
        return isFound
    }
    //takes in sorted array
    func binarySearch(data: [Int], itemToFind: Int) -> Bool {
        if data.count == 1 {
            if itemToFind == data[0] {
                return true
            } else {
                return false
            }
        } else if data.count == 0 {
            return false
        } else {
            let midpoint = data.count/2
            print(midpoint)
            print(data)
            if data[midpoint] == itemToFind {
                return true
            } else if data[midpoint] > itemToFind {
                return binarySearch(data: Array(data.dropLast(data.count - data.count/2)), itemToFind: itemToFind)
            } else {
                return binarySearch(data: Array(data.dropFirst(data.count/2 + 1)), itemToFind: itemToFind)
            }
        }
    }
}
