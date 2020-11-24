//
//  SearchingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Zachary Marinov on 11/23/20.
//  Copyright © 2020 VonNeumannGauss. All rights reserved.
//

import XCTest

class SearchingTest: XCTestCase {

    func testLinearSearchWithArraySizeOne() {
        //arrange
        let searching = Searching()
        //act
        let expected = true
        let result = searching.linearSearch(data: [5], itemToFind: 5)
        //assert
        XCTAssertEqual(result, expected)
    }
    
    func testLinearSearchWithArraySizeFive() {
        //arrange
        let searching = Searching()
        //act
        let expected = true
        let result = searching.linearSearch(data: [4,3,2,5,1], itemToFind: 5)
        //assert
        XCTAssertEqual(result, expected)
    }
    
    func testLinearSearchWithManyIntegerArrays() {
        //arrange
        let searching = Searching()
        //act
        //assert
        let testCases = [(expected: true, array: [1,6,4,9,4], itemToFind: 4),
                         (expected: false, array: [1,6,4,9,4], itemToFind: 5),
                         (expected: true, array: [1,6,4,9,4,4,3,1,8,9,1], itemToFind: 9),
                         (expected: false, array: [1,6,4,9,4,4,6,4,2,1,5,7], itemToFind: 10),
                         (expected: true, array: [1000,10000,100000,4], itemToFind: 4)]
        for item in testCases {
            XCTAssertEqual(item.expected, searching.linearSearch(data: item.array, itemToFind: item.itemToFind))
        }
        
    }
    
    func testPerformanceOfLinearSearchWithArraySizeFive() {
        let searching = Searching()
        //this is a performance test - checks how fast or slow your code is
        measure {
            _ = searching.linearSearch(data: [10,3,2,1,6,8], itemToFind: 2)
        }
    }
    
    func testPerformanceOfLinearSearchWithArraySizeFifty() {
        let searching = Searching()
        var data = [Int]()
        for _ in 1...50 {
            data.append(Int.random(in:1...100))
        }
        //this is a performance test - checks how fast or slow your code is
        measure {
            _ = searching.linearSearch(data: data, itemToFind: 10)
        }
    }
    
    func testPerformanceOfBubbleSortWithArraySizeFiveHundred() {
        let searching = Searching()
        var data = [Int]()
        for _ in 1...500 {
            data.append(Int.random(in:1...100))
        }
        //this is a performance test - checks how fast or slow your code is
        measure {
            _ = searching.linearSearch(data: data, itemToFind: 50)
        }
    }
    
    func testBinarySearchWithIntegerArraySizeOne() {
        //arrange
        let searching = Searching()
        //act
        let expected = true
        let result = searching.binarySearch(data: [5], itemToFind: 5)
        //assert
        XCTAssertEqual(result, expected)
    }
    
    func testBinarySearchWithArraySizeFive() {
        //arrange
        let searching = Searching()
        //act
        let expected = true
        let result = searching.binarySearch(data: [1,2,3,4,5], itemToFind: 5)
        //assert
        XCTAssertEqual(result, expected)
    }
    
    func testBinarySearchWithFalseArray() {
        //arrange
        let searching = Searching()
        //act
        let expected1 = false
        let result1 = searching.binarySearch(data: [], itemToFind: 5)
        
        let expected2 = false
        let result2 = searching.binarySearch(data: [1,2,3,5,6,7], itemToFind: 4)
        //assert
        XCTAssertEqual(result1, expected1)
        XCTAssertEqual(result2, expected2)
        
    }
    
    func testBinarySearchWithManyArrays() {
        //arrange
        let searching = Searching()
        //act
        //assert
        let testCases = [(expected: true, array: [1,4,4,6,9], itemToFind: 4),
                         (expected: false, array: [1,4,4,6,9,10], itemToFind: 5),
                         (expected: true, array: [1,2,3,8,8,9,21,21,30], itemToFind: 9),
                         (expected: false, array: [1,2,2,2,3,5,7,8,9], itemToFind: 10),
                         (expected: true, array: [4,100,100,10000], itemToFind: 4)]
        for item in testCases {
            XCTAssertEqual(item.expected, searching.binarySearch(data: item.array, itemToFind: item.itemToFind))
        }
    }

}
