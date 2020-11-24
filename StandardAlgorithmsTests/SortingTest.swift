//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Zachary Marinov on 11/13/20.
//  Copyright © 2020 VonNeumannGauss. All rights reserved.
//

import XCTest
//red-green refactor approach to test-drive dev
//you only write code when you get a 'red'

class SortingTest: XCTestCase {

    func testBubbleSortWithIntegerArrayReturnsSortedArray() {
        //arrange
        let sorting = Sorting() //new instance of sorting library
        let expected = [1,3,5,8]
        //act (action we want test to take)
        let result = sorting.bubbleSort(data: [5,3,1,8])
        //assert
        XCTAssertEqual(result, expected)
    }

    func testBubbleSortWithVariousIntegerArraysReturnsEachOneSorted() {
        //arrange
        let sorting = Sorting()
        let testData = [(data:[6,3,1,9,2], expected: [1,2,3,6,9]),
                        (data:[1,100,4,3,15], expected: [1,3,4,15,100]),
                        (data: [5,4,3,55,54], expected: [3,4,5,54,55]),
                        (data:[], expected:[]),
                        (data:[0,0,0,1,1,2,1,1,0,0,0], expected: [0,0,0,0,0,0,1,1,1,1,2])]
        //act
        //assert
        for test in testData {
            let result = sorting.bubbleSort(data: test.data)
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testPerformanceOfBubbleSortWithArraySizeFive() {
        let sorting = Sorting()
        //this is a performance test - checks how fast or slow your code is
        measure {
            _ = sorting.bubbleSort(data: [10,3,2,1,6,8])
        }
    }
    
    func testPerformanceOfBubbleSortWithArraySizeFifty() {
        let sorting = Sorting()
        var data = [Int]()
        for _ in 1...50 {
            data.append(Int.random(in:1...100))
        }
        //this is a performance test - checks how fast or slow your code is
        measure {
            _ = sorting.bubbleSort(data: data)
        }
    }
    
    func testPerformanceOfBubbleSortWithArraySizeFiveHundred() {
        let sorting = Sorting()
        var data = [Int]()
        for _ in 1...500 {
            data.append(Int.random(in:1...100))
        }
        //this is a performance test - checks how fast or slow your code is
        measure {
            _ = sorting.bubbleSort(data: data)
        }
    }
    
    func testMergeSortReturnsSortedArray() {
        //arrange
        let sorting = Sorting()
        let expected = [1,3,5,8]
        //act
        let result = sorting.mergeSort(data:[3,5,1,8])
        //assert
        XCTAssertEqual(expected, result)
    }
    
    func testMergeSortWithSize2Arrays() {
        //arrange
        let sorting = Sorting()
        let expected = [1,2]
        //act
        let result = sorting.mergeSort(data: [2,1])
        //assert
        XCTAssertEqual(expected, result)
    }
    
    func testMergeSortWithLotsOfIntegerArrays() {
        //arrange
        let sorting = Sorting()
        //tuples of (data, expected)
        let testData = [(data:[6,3,1,9,2], expected: [1,2,3,6,9]),
                        (data:[1,100,4,3,15], expected: [1,3,4,15,100]),
                        (data: [5,4,3,55,54], expected: [3,4,5,54,55]),
                        (data:[], expected:[]),
                        (data:[0,0,0,1,1,2,1,1,0,0,0], expected: [0,0,0,0,0,0,1,1,1,1,2])]
        //act
        //assert
        for test in testData {
            let result = sorting.mergeSort(data: test.data)
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testPerformanceOfMergeSortWithArraySizeFive() {
        let sorting = Sorting()
        //this is a performance test - checks how fast or slow your code is
        measure {
            _ = sorting.mergeSort(data: [10,3,2,1,6,8])
        }
    }
    
    func testPerformanceOfMergeSortWithArraySizeFifty() {
        let sorting = Sorting()
        var data = [Int]()
        for _ in 1...50 {
            data.append(Int.random(in:1...100))
        }
        //this is a performance test - checks how fast or slow your code is
        measure {
            _ = sorting.mergeSort(data: data)
        }
    }
    
    func testPerformanceOfMergeSortWithArraySizeFiveHundred() {
        let sorting = Sorting()
        var data = [Int]()
        for _ in 1...500 {
            data.append(Int.random(in:1...100))
        }
        //this is a performance test - checks how fast or slow your code is
        measure {
            _ = sorting.mergeSort(data: data)
        }
    }
    
    func testQuickSortWithIntegerArrayReturnsSortedArray() {
        //arrange
        let sorting = Sorting() //new instance of sorting library
        let expected = [1,3,5,8]
        //act (action we want test to take)
        let result = sorting.quickSort(data: [5,3,1,8])
        //assert
        XCTAssertEqual(result, expected)
    }
    
    func testQuickSortWithVariousIntegerArraysReturnsEachOneSorted() {
        //arrange
        let sorting = Sorting()
        let testData = [(data:[6,3,1,9,2], expected: [1,2,3,6,9]),
                        (data:[1,100,4,3,15], expected: [1,3,4,15,100]),
                        (data: [5,4,3,55,54], expected: [3,4,5,54,55]),
                        (data:[], expected:[]),
                        (data:[0,0,0,1,1,2,1,1,0,0,0], expected: [0,0,0,0,0,0,1,1,1,1,2])]
        //act
        //assert
        for test in testData {
            let result = sorting.quickSort(data: test.data)
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testPerformanceOfQuickSortWithArraySizeFive() {
        let sorting = Sorting()
        //this is a performance test - checks how fast or slow your code is
        measure {
            _ = sorting.quickSort(data: [10,3,2,1,6,8])
        }
    }
    
    func testPerformanceOfQuickSortWithArraySizeFifty() {
        let sorting = Sorting()
        var data = [Int]()
        for _ in 1...50 {
            data.append(Int.random(in:1...100))
        }
        //this is a performance test - checks how fast or slow your code is
        measure {
            _ = sorting.quickSort(data: data)
        }
    }
    
    func testPerformanceOfQuickSortWithArraySizeFiveHundred() {
        let sorting = Sorting()
        var data = [Int]()
        for _ in 1...500 {
            data.append(Int.random(in:1...100))
        }
        //this is a performance test - checks how fast or slow your code is
        measure {
            _ = sorting.quickSort(data: data)
        }
    }
    
    func testInsertionSortReturnsSortedArray() {
        //arrange
        let sorting = Sorting()
        let expected = [1,3,5,8]
        //act
        let result = sorting.insertionSort(data:[3,5,1,8])
        //assert
        XCTAssertEqual(expected, result)
    }
    
    func testInsertionSortWithSize2Arrays() {
        //arrange
        let sorting = Sorting()
        let expected = [1,2]
        //act
        let result = sorting.insertionSort(data: [2,1])
        //assert
        XCTAssertEqual(expected, result)
    }
    
    func testInsertionSortWithLotsOfIntegerArrays() {
        //arrange
        let sorting = Sorting()
        //tuples of (data, expected)
        let testData = [(data:[6,3,1,9,2], expected: [1,2,3,6,9]),
                        (data:[1,100,4,3,15], expected: [1,3,4,15,100]),
                        (data: [5,4,3,55,54], expected: [3,4,5,54,55]),
                        (data:[], expected:[]),
                        (data:[0,0,0,1,1,2,1,1,0,0,0], expected: [0,0,0,0,0,0,1,1,1,1,2])]
        //act
        //assert
        for test in testData {
            let result = sorting.insertionSort(data: test.data)
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testPerformanceOfInsertionSortWithArraySizeFive() {
        let sorting = Sorting()
        //this is a performance test - checks how fast or slow your code is
        measure {
            _ = sorting.insertionSort(data: [10,3,2,1,6,8])
        }
    }
    
    func testPerformanceOfInsertionSortWithArraySizeFifty() {
        let sorting = Sorting()
        var data = [Int]()
        for _ in 1...50 {
            data.append(Int.random(in:1...100))
        }
        //this is a performance test - checks how fast or slow your code is
        measure {
            _ = sorting.insertionSort(data: data)
        }
    }
    
    func testPerformanceOfInsertionSortWithArraySizeFiveHundred() {
        let sorting = Sorting()
        var data = [Int]()
        for _ in 1...500 {
            data.append(Int.random(in:1...100))
        }
        //this is a performance test - checks how fast or slow your code is
        measure {
            _ = sorting.insertionSort(data: data)
        }
    }
        
}
