//
//  SmallestCommonMultipleTests.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/15/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_Intermidiatel_algorithms_and_unit_testing

class SmallestCommonMultipleTests: XCTestCase {
    let smallestCommonMultiple = SmallestCommonMultiple()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let range = [1, 5]
        let checkingNumber = 60
        let result = smallestCommonMultiple.smallestCommons(range: range)
        XCTAssert(result is Int)
        XCTAssertEqual(result, checkingNumber)
    }
    func testExampleCheck2() {
        let range = [5, 1]
        let checkingNumber = 60
        let result = smallestCommonMultiple.smallestCommons(range: range)
        XCTAssertEqual(result, checkingNumber)
    }
    func testExampleCheck3() {
        let range = [1, 13]
        let checkingNumber = 360360
        let result = smallestCommonMultiple.smallestCommons(range: range)
        XCTAssertEqual(result, checkingNumber)
    }
    func testExampleCheck4() {
        let range = [23, 18]
        let checkingNumber = 6056820
        let result = smallestCommonMultiple.smallestCommons(range: range)
        XCTAssertEqual(result, checkingNumber)
    }
    
}
