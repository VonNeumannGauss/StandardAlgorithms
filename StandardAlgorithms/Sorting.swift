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
        if data.count <= 1 {
            return data
        } else {
            var newData = [[Int]]()
            
            for item in data {
                newData.append([item])
            }
            
            return partialMergeSort(data: newData)[0]
        }
        
    }
    
    func partialMergeSort(data: [[Int]]) -> [[Int]] {
        
        if data.count <= 1 {
            return data
        }
        
        var tempData = data
        var secondArray = [[Int]]()
        //make even so we can safely and uniformly split
        if (tempData.count % 2) == 1 {
            tempData += [[]]
        }
        
        for i in 0...tempData.count-2 where i % 2 == 0 { //only even i
            secondArray.append(merge(inData1: tempData[i],inData2: tempData[i+1]))
        }
        
        return partialMergeSort(data:secondArray)
        
        
    }
    
    func merge(inData1: [Int], inData2: [Int]) -> [Int] {
        let data1 = inData1
        var data2 = inData2
        
        var newData = [Int]()
        for item1 in data1 {
            for item2 in data2 {
                if item1 >= item2 {
                    newData.append(item2)
                    data2.removeFirst()
                }
            }
            newData.append(item1)
        }
        
        newData += data2
        
        return newData
        
    }
    
    
    
}

