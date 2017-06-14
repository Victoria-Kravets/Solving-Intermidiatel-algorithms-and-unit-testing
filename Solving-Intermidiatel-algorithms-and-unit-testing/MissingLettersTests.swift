//
//  MissingLettersTests.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/14/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_Intermidiatel_algorithms_and_unit_testing
class MissingLettersTests: XCTestCase {
    let missingLetters = MissingLetters()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testFearNotLetter() {
        let sequence = "abce"
        let checkingLetter = "d"
        let result = missingLetters.fearNotLetter(sequence: sequence)
        XCTAssertEqual(result, checkingLetter)
    }
    func testFearNotLetterCheck2() {
        let sequence = "abcdefghjklmno"
        let checkingLetter = "i"
        let result = missingLetters.fearNotLetter(sequence: sequence)
        XCTAssertEqual(result, checkingLetter)
    }
    func testFearNotLetterCheck3() {
        let sequence = "bcd"
        let checkingLetter = ""
        let result = missingLetters.fearNotLetter(sequence: sequence)
        XCTAssertEqual(result, checkingLetter)
    }
    func testFearNotLetterCheck4() {
        let sequence = "yz"
        let checkingLetter = ""
        let result = missingLetters.fearNotLetter(sequence: sequence)
        XCTAssertEqual(result, checkingLetter)
    }
    
}
