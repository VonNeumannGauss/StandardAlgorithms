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
    //we made this by mistake - finds the median of a set given a sorted integer array
    func findMedianOfSortedArray(data: [Int]) -> Int {
        let length = data.count
        if length % 2 == 0 {
            let average = (data[(length/2)-1] + data[(length/2)])/2
            return average 
        } else {
            return data[length/2]
        }
    }
    //because nil can come out, you need to use Int? as the output
    func findModeOfSortedArray(data: [Int]) -> Int? {
        
        if data.count == 0 {
            return nil
        } else if data.count == 1 {
            return data[0]
        } else {
            var mostFrequentNumber = data[0]
            var numberOfTimesMostFrequentNumberAppears = 1
            var tempCounting = 0
            var mostFrequentNumberCandidate = Int()
            for i in 1...data.count-1 {
                if data[i] == mostFrequentNumber {
                    numberOfTimesMostFrequentNumberAppears += 1
                } else if data[i] == mostFrequentNumberCandidate {
                    tempCounting += 1
                } else {
                    if tempCounting > numberOfTimesMostFrequentNumberAppears {
                        numberOfTimesMostFrequentNumberAppears = tempCounting
                        mostFrequentNumber = mostFrequentNumberCandidate
                    }
                    mostFrequentNumberCandidate = data[i]
                    //number will already have appeared once, so tempCounting = 1, not 0
                    tempCounting = 1
                }
            }
            return mostFrequentNumber
        }
    }
    
    func findSecondSmallestItemInIntegerArray(data: [Int]) -> Int? {
        if data.count <= 1 {
            return nil
        } else {
            var smallest = data[0]
            //default value here is 0. You need to fix this so that the value it takes is present in the array
            var secondSmallestPlaceHolder = 0.9
            var secondSmallest = Int()
            print("This is the value of secondSmallest at the beginning: \(secondSmallest)")
            for i in 1...data.count-1 {
                if data[i] < smallest {
                    secondSmallest = smallest
                    smallest = data[i]
                } else if (secondSmallestPlaceHolder == 0.9) && (data[i] != smallest) {
                    secondSmallest = data[i]
                    //we need this thing so that we check if secondSmallest has been mutated yet without having to loop through the array another time to actually assign it a value
                    secondSmallestPlaceHolder = 0.8
                } else if (data[i] < secondSmallest) && (data[i] != smallest) {
                    secondSmallest = data[i]
                }
            }
            return secondSmallest
        }
    }
}


