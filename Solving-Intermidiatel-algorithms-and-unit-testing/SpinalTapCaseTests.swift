//
//  SpinalTapCaseTests.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/14/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_Intermidiatel_algorithms_and_unit_testing
class SpinalTapCaseTests: XCTestCase {
    let spinalTapCase = SpinalTapCase()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSpinalCase() {
        let originalStr = "This Is Spinal Tap"
        let checkingStr = "this-is-spinal-tap"
        let resultStr = spinalTapCase.spinalCase(originalStr: originalStr)
        XCTAssertEqual(resultStr, checkingStr)
    }
    func testSpinalCaseCheck2() {
        let originalStr = "thisIsSpinalTap"
        let checkingStr = "this-is-spinal-tap"
        let resultStr = spinalTapCase.spinalCase(originalStr: originalStr)
        XCTAssertEqual(resultStr, checkingStr)
    }
    func testSpinalCaseCheck3() {
        let originalStr = "This Is Spinal Tap"
        let checkingStr = "this-is-spinal-tap"
        let resultStr = spinalTapCase.spinalCase(originalStr: originalStr)
        XCTAssertEqual(resultStr, checkingStr)
    }
    func testSpinalCaseCheck4() {
        let originalStr = "This Is Spinal Tap"
        let checkingStr = "this-is-spinal-tap"
        let resultStr = spinalTapCase.spinalCase(originalStr: originalStr)
        XCTAssertEqual(resultStr, checkingStr)
    }
    func testSpinalCaseCheck5() {
        let originalStr = "This Is Spinal Tap"
        let checkingStr = "this-is-spinal-tap"
        let resultStr = spinalTapCase.spinalCase(originalStr: originalStr)
        XCTAssertEqual(resultStr, checkingStr)
    }
}
