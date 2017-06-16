//
//  DropItTests.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/16/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_Intermidiatel_algorithms_and_unit_testing

class DropItTests: XCTestCase {
    let dropIt = DropIt()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDropElements() {
        let originalArray = [1, 2, 3, 4]
        let checkinArray = [3, 4]
        let result = dropIt.dropElements(originalArray: originalArray, function: {(n:Int)->(Bool) in return n >= 3})
        XCTAssertEqual(result, checkinArray)
    }
    func testDropElementsCheck2() {
        let originalArray = [0, 1, 0, 1]
        let checkinArray = [1, 0, 1]
        let result = dropIt.dropElements(originalArray: originalArray, function: {(n:Int)->(Bool) in return n == 1})
        XCTAssertEqual(result, checkinArray)
    }
    func testDropElementsCheck3() {
        let originalArray = [1, 2, 3]
        let checkinArray = [1, 2, 3]
        let result = dropIt.dropElements(originalArray: originalArray, function: {(n:Int)->(Bool) in return n > 0})
        XCTAssertEqual(result, checkinArray)
    }
    func testDropElementsCheck4() {
        let originalArray = [1, 2, 3, 4]
        let checkinArray = [Int]()
        let result = dropIt.dropElements(originalArray: originalArray, function: {(n:Int)->(Bool) in return n > 5})
        XCTAssertEqual(result, checkinArray)
    }
    func testDropElementsCheck5() {
        let originalArray = [1, 2, 3, 7, 4]
        let checkinArray = [7, 4]
        let result = dropIt.dropElements(originalArray: originalArray, function: {(n:Int)->(Bool) in return n > 3})
        XCTAssertEqual(result, checkinArray)
    }
    func testDropElementsCheck6() {
        let originalArray = [1, 2, 3, 9, 2]
        let checkinArray = [3, 9, 2]
        let result = dropIt.dropElements(originalArray: originalArray, function: {(n:Int)->(Bool) in return n > 2})
        XCTAssertEqual(result, checkinArray)
    }
}
