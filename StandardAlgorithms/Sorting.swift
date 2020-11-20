//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Zachary Marinov on 11/13/20.
//  Copyright © 2020 VonNeumannGauss. All rights reserved.
//

import Foundation

class Sorting {
    func bubbleSort(data: [Int]) -> [Int] {
        var newArray = data
        var sorted = false
        if data.count <= 1 {
            return data
        } else {
            while !sorted {
                sorted = true
                for i in 0..<data.count-1 {
                    if newArray[i+1] < newArray[i] {
                        let temp = newArray[i]
                        newArray[i] = newArray[i+1]
                        newArray[i+1] = temp
                        sorted = false
                    }
                }
            }
            return newArray
        }
        
    }
    
    func mergeSort(data:[Int]) -> [Int] {
        var newData = [[Int]]()
        
        for item in data {
            newData.append([item])
        }
        
        return partialMergeSort(data: newData)[0]
        
    }
    
    func partialMergeSort(data: [[Int]]) -> [[Int]] {
        
        if data.count <= 1 {
            return data
        }
        
        var tempData = data
        var secondArray = [[Int]]()
        //make even so we can safely and uniformly split
        if tempData.count % 2 == 1 {
            tempData += []
        }
        for i in 0...data.count-2 where i % 2 == 0 { //only even i
            secondArray[i] = merge(data1: tempData[i], data2: tempData[i+1])
        }
        
        return partialMergeSort(data:secondArray)
        
        
    }
    //I think this function works - the issue is we need to first split everything up before we can apply merge, as this relies on the subarrays it's using being sorted
    func merge(data1: [Int], data2: [Int]) -> [Int]{
        var newData = [Int]()
        for item in data2 {
            var isGreaterThan = true
            var counter = 0
            while isGreaterThan && (counter <= data1.count-1){
                isGreaterThan = (item >= data1[counter])
                newData.append(data1[counter])
                counter += 1
            }
            newData.append(item)
        }
        
        return newData
    }
    
    
    
}

