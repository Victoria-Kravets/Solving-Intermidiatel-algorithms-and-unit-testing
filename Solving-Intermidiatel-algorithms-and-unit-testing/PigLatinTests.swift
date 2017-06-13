//
//  PigLatinTests.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/13/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_Intermidiatel_algorithms_and_unit_testing

class PigLatinTests: XCTestCase {
    let pigLatin = PigLatin()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTranslatePigLatin() {
        let originStr = "california"
        let checkingStr = "aliforniacay"
        let resultStr = pigLatin.translatePigLatin(originStr: originStr)
        XCTAssertEqual(resultStr, checkingStr)
    }
    func testTranslatePigLatinCheck2() {
        let originStr = "paragraphs"
        let checkingStr = "aragraphspay"
        let resultStr = pigLatin.translatePigLatin(originStr: originStr)
        XCTAssertEqual(resultStr, checkingStr)
    }
    func testTranslatePigLatinCheck3() {
        let originStr = "algorithm"
        let checkingStr = "algorithmway"
        let resultStr = pigLatin.translatePigLatin(originStr: originStr)
        XCTAssertEqual(resultStr, checkingStr)
    }
    func testTranslatePigLatinCheck4() {
        let originStr = "eight"
        let checkingStr = "eightway"
        let resultStr = pigLatin.translatePigLatin(originStr: originStr)
        XCTAssertEqual(resultStr, checkingStr)
    }
    
}
