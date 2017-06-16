//
//  FindersKeepersTests.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/15/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_Intermidiatel_algorithms_and_unit_testing

class FindersKeepersTests: XCTestCase {
    let findersKeepers = FindersKeepers()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testFindElement() {
        let originalArray = [1, 3, 5, 8, 9, 10]
        let checkingDigit = 8
        let result = findersKeepers.findElement(originalArray: originalArray, function: {(num: Int) -> Bool in
            return (num % 2 == 0) as! Bool})
        XCTAssertEqual(result as! Int, checkingDigit )
    }
    func testFindElementCheck2() {
        let originalArray = [1, 3, 5, 9]
        let checkingDigit = 8
        let result = findersKeepers.findElement(originalArray: originalArray, function: {(num: Int) -> Bool in
            return (num % 2 == 0) as! Bool})
        XCTAssertFalse(result is Int )
    }
    
    
}
