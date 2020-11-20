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
        //arrange
        let expected = 6
        //act
        let result =  Unknown.summingArray(data:[1,5])
        //assert
        XCTAssertEqual(expected, result)
    }

}
