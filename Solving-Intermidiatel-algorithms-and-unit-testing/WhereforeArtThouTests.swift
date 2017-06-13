//
//  WhereforeArtThouTests.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/12/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_Intermidiatel_algorithms_and_unit_testing

class WhereforeArtThouTests: XCTestCase {
    let whereforeArtThou = WhereforeArtThou()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testWhatIsInAName() {
        var firstArray: Array<Dictionary<String, Any>> = [["first": "Romeo", "last": "Montague"], ["first": "Mercutio", "last": "Smith"], ["first": "Tybalt", "last": "Capulet"]]
        let secondArray: Array<Dictionary<String, Any>> =  [["last": "Capulet"]]
        let checkingArray: Array<Dictionary<String, Any>> = [["first": "Tybalt", "last": "Capulet"]]
        let resultArray = whereforeArtThou.whatIsInAName(firstArray: firstArray, secondArray: secondArray)
        XCTAssertEqual(resultArray[0].keys.first, checkingArray[0].keys.first)
    }
    func testWhatIsInANameCheck2() {
        var firstArray: Array<Dictionary<String, Any>> = [["a": 1], ["a": 1], ["a": 1, "b": 2]]
        let secondArray: Array<Dictionary<String, Any>> =  [["a": 1]]
        let checkingArray: Array<Dictionary<String, Any>> = [["a": 1], ["a": 1], ["a": 1, "b": 2]]
        let resultArray = whereforeArtThou.whatIsInAName(firstArray: firstArray, secondArray: secondArray)
        XCTAssertEqual(resultArray[0].keys.first, checkingArray[0].keys.first)
    }
    func testWhatIsInANameCheck3() {
        var firstArray: Array<Dictionary<String, Any>> = [["a": 1, "b": 2], ["a": 1], ["a": 1, "b": 2, "c": 2]]
        let secondArray: Array<Dictionary<String, Any>> =  [["a": 1, "b": 2]]
        let checkingArray: Array<Dictionary<String, Any>> = [["a": 1, "b": 2], ["a": 1, "b": 2, "c": 2]]
        let resultArray = whereforeArtThou.whatIsInAName(firstArray: firstArray, secondArray: secondArray)
        XCTAssertEqual(resultArray[0].keys.first, checkingArray[0].keys.first)
    }
    func testWhatIsInANameCheck4() {
        var firstArray: Array<Dictionary<String, Any>> = [["a": 1, "b": 2], ["a": 1], ["a": 1, "b": 2, "c": 2]]
        let secondArray: Array<Dictionary<String, Any>> =  [["a": 1, "c": 2]]
        let checkingArray: Array<Dictionary<String, Any>> = [["a": 1, "b": 2, "c": 2]]
        let resultArray = whereforeArtThou.whatIsInAName(firstArray: firstArray, secondArray: secondArray)
        XCTAssertEqual(resultArray[0].keys.first, checkingArray[0].keys.first)
    }
    
}
