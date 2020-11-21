//
//  UnknownTest.swift
//  StandardAlgorithms
//
//  Created by Zachary Marinov on 11/20/20.
//  Copyright © 2020 VonNeumannGauss. All rights reserved.
//

import XCTest

class UnknownTest: XCTestCase {

    func testAddFirstAndLastWithIntegerArray() {
        let unknown = Unknown()
        //arrange
        let expected = 6
        //act
        let result =  unknown.summingArray(data:[1,5])
        //assert
        XCTAssertEqual(expected, result)
    }
    
    func testAddFirstAndLastWithManyArrays() {
        //arrange
        let unknown = Unknown()
        let testCases = [(expected:6, input: [3,3]), (expected: 7, input:[1,2,6]), (expected:15, input:[3,5,6,11,12])]
        
        //act
        //assert
        for tuple in testCases {
            XCTAssertEqual(tuple.expected, unknown.summingArray(data: tuple.input))
        }
    }
    
    func testAddFirstAndLastWithArraySizeZeroAndOne() {
        //arrange
        let unknown = Unknown()
        let testCases = [(expected:0, input:[]), (expected:10, input:[5]), (expected:26, input:[13])]
        
        //act
        //assert
        for tuple in testCases {
            XCTAssertEqual(tuple.expected, unknown.summingArray(data: tuple.input))
        }
    }
    
    func testFindModeOfSingleSortedArray() {
        //arrange
        let unknown = Unknown()
        //act
        let expected = 5
        let result = unknown.findModeOfSortedArray(data:[1,2,5,5,6,7])
        //assert
        XCTAssertEqual(expected,  result)
    }
    
    func testFindModeOfManySortedArrays() {
        //arrange
        let unknown = Unknown()
        //act
        //assert
        let testCases = [(expected:nil, input:[]), (expected:5, input:[5]), (expected:26, input:[13, 13,26,26,26,27,27,28,29,30]), (expected:5, input:[1,2,3,3,3,3,4,4,4,4,4,4,4,5,5,5,5,5,5,5,5,5,5,5,6,6,6,6,7,7,7,8,9])]
        
        for tuple in testCases {
            XCTAssertEqual(tuple.expected, unknown.findModeOfSortedArray(data: tuple.input))
        }
    }
}
