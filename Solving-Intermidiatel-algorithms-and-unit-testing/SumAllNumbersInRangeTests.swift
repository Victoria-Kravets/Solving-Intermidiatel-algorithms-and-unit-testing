//
//  SumAllNumbersInRangeTests.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/9/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_Intermidiatel_algorithms_and_unit_testing
class SumAllNumbersInRangeTests: XCTestCase {
    let sumAllNumbersInRange = SumAllNumbersInRange()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSumAll() {
        let originalArray = [1, 4]
        let checkingNumber = 10
        let resultNumber = sumAllNumbersInRange.sumAll(originalArray: originalArray)
        XCTAssert(resultNumber is Int)
        XCTAssertEqual(resultNumber, checkingNumber)
    }
    func testSumAllCheck2() {
        let originalArray = [4, 1]
        let checkingNumber = 10
        let resultNumber = sumAllNumbersInRange.sumAll(originalArray: originalArray)
        XCTAssert(resultNumber is Int)
        XCTAssertEqual(resultNumber, checkingNumber)
    }
    func testSumAllCheck3() {
        let originalArray = [5, 10]
        let checkingNumber = 45
        let resultNumber = sumAllNumbersInRange.sumAll(originalArray: originalArray)
        XCTAssert(resultNumber is Int)
        XCTAssertEqual(resultNumber, checkingNumber)
    }
    func testSumAllCheck4() {
        let originalArray = [10, 5]
        let checkingNumber = 45
        let resultNumber = sumAllNumbersInRange.sumAll(originalArray: originalArray)
        XCTAssert(resultNumber is Int)
        XCTAssertEqual(resultNumber, checkingNumber)
    }
    
    
}
