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
    
    func quickSort(data: [Int]) -> [Int] {
        if data.count <= 1 {
            return data
        } else {
            let pivot = data[0]
            var theLeft = [Int]()
            var theRight = [Int]()
            for i in 1..<data.count {
                if data[i] > pivot {
                    theRight.append(data[i])
                } else {
                    theLeft.append(data[i])
                }
            }
            let arrayPivot = [pivot]
            //this is NOT redundant because array[0] is an integer, but you need to have it as an array of size 1 in order to concatenate the arrays together
            return quickSort(data: theLeft) + arrayPivot + quickSort(data:theRight)
            //return theLeft + arrayPivot + theRight
        }
    }
    
    func insertionSort(data: [Int]) -> [Int] {
        
        if data.count <= 1 {
            return data
        } else {
            var newArray = data
            var counter = Int()
            for index in 1...newArray.count-1 {
                var isPlaced = false
                counter = index-1
                while !isPlaced && (counter >= 0) {
                    if newArray[index] >= newArray[counter] {
                        let item = newArray[index]
                        newArray.remove(at:index)
                        newArray.insert(item, at:counter+1)
                        isPlaced = true
                    }
                    counter -= 1
                }
                //if value is smaller than everything, then put it right at the back
                if !isPlaced {
                    let item = newArray[index]
                    newArray.remove(at:index)
                    newArray.insert(item, at:0)
                }
            }
            return newArray
        }
    }
    
    
    
}

