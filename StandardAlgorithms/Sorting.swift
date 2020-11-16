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
    
    func mergeSort(data: [Int]) -> [Int] {
    
        if data.count <= 1 {
            return data
        } else if data.count == 2{
            if data[0] > data[1] {
                let newData = [data[1], data[0]]
                return newData
            } else {
                return data
            }
        } else {
            let middle = data.count / 2
            let leftArray = Array(data.prefix(middle))
            let rightArray = Array(data.dropFirst(middle))
            
            return merge(data1: leftArray, data2: rightArray)
        }
        
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

