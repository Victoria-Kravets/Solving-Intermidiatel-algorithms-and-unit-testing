//
//  EverythingBeTrueTests.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/15/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_Intermidiatel_algorithms_and_unit_testing

class EverythingBeTrueTests: XCTestCase {
    let everythingBeTrue = EverythingBeTrue()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    func testTruthCheck() {
        let originalArray = [["user": "Tinky-Winky", "sex": "male"], ["user": "Dipsy", "sex": "male"], ["user": "Laa-Laa", "sex": "female"], ["user": "Po", "sex": "female"]]
        let key = "sex"
        let result = everythingBeTrue.truthCheck(originalArray: originalArray, key: key)
        XCTAssertTrue(result)
    }
    func testTruthCheck2() {
        let originalArray = [["user": "Tinky-Winky", "sex": "male"], ["user": "Dipsy"], ["user": "Laa-Laa", "sex": "female"], ["user": "Po", "sex": "female"]]
        let key = "sex"
        let result = everythingBeTrue.truthCheck(originalArray: originalArray, key: key)
        XCTAssertFalse(result)
    }
    func testTruthCheck3() {
        let originalArray = [["user": "Tinky-Winky", "sex": "male", "age": 0], ["user": "Dipsy", "sex": "male", "age": 3], ["user": "Laa-Laa", "sex": "female", "age": 5], ["user": "Po", "sex": "female", "age": 4]]
        let key = "age"
        let result = everythingBeTrue.truthCheck(originalArray: originalArray, key: key)
        XCTAssertFalse(result)
    }
    func testTruthCheck4() {
        let originalArray = [["name": "Pete", "onBoat": true], ["name": "Repeat", "onBoat": true], ["name": "FastFoward", "onBoat": nil]] as [Any]
        let key = "onBoat"
        let result = everythingBeTrue.truthCheck(originalArray: originalArray as! Array<Dictionary<String, Any>>, key: key)
        XCTAssertFalse(result)
    }
    func testTruthCheck5() {
        let originalArray = [["name": "Pete", "onBoat": true], ["name": "Repeat", "onBoat": true, "alias": "Repete"], ["name": "FastFoward", "onBoat": true]]
        let key = "onBoat"
        let result = everythingBeTrue.truthCheck(originalArray: originalArray, key: key)
        XCTAssertTrue(result)
    }
    func testTruthCheck6() {
        let originalArray = [["single": "yes"]]
        let key = "single"
        let result = everythingBeTrue.truthCheck(originalArray: originalArray, key: key)
        XCTAssertTrue(result)
    }
    func testTruthCheck7() {
        let originalArray = [["single": ""], ["single": "double"]]
        let key = "single"
        let result = everythingBeTrue.truthCheck(originalArray: originalArray, key: key)
        XCTAssertFalse(result)
    }
}
