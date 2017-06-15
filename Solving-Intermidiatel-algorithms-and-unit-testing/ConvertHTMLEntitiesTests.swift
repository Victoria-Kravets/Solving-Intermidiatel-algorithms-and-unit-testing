//
//  ConvertHTMLEntitiesTests.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/15/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_Intermidiatel_algorithms_and_unit_testing

class ConvertHTMLEntitiesTests: XCTestCase {
    let convertHTMLEntities = ConvertHTMLEntities()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    
    func testConvertHTML() {
        let originalStr = "Dolce & Gabbana"
        let checkingStr = "Dolce &amp; Gabbana"
        let result = convertHTMLEntities.convertHTML(originalStr: originalStr)
        XCTAssertEqual(result, checkingStr)
    }
    func testConvertHTMLCheck2() {
        let originalStr = "Hamburgers < Pizza < Tacos"
        let checkingStr = "Hamburgers &lt; Pizza &lt; Tacos"
        let result = convertHTMLEntities.convertHTML(originalStr: originalStr)
        XCTAssertEqual(result, checkingStr)
    }
    func testConvertHTMLCheck3() {
        let originalStr = "Sixty > twelve"
        let checkingStr = "Sixty &gt; twelve"
        let result = convertHTMLEntities.convertHTML(originalStr: originalStr)
        XCTAssertEqual(result, checkingStr)
    }//???????????????????????
//    func testConvertHTMLCheck4() {
//        let originalStr = "Stuff in \"quotation marks\""
//        let checkingStr = "Stuff in &​quot;quotation marks&​quot;"
//        let result = convertHTMLEntities.convertHTML(originalStr: originalStr)
//        XCTAssertEqual(result, checkingStr)
//    }
    func testConvertHTMLCheck5() {
        let originalStr = "Shindler's List"
        let checkingStr = "Shindler&apos;s List"
        let result = convertHTMLEntities.convertHTML(originalStr: originalStr)
        XCTAssertEqual(result, checkingStr)
    }
    func testConvertHTMLCheck6() {
        let originalStr = "<>"
        let checkingStr = "&lt;&gt;"
        let result = convertHTMLEntities.convertHTML(originalStr: originalStr)
        XCTAssertEqual(result, checkingStr)
    }
    func testConvertHTMLCheck7() {
        let originalStr = "abc"
        let checkingStr = "abc"
        let result = convertHTMLEntities.convertHTML(originalStr: originalStr)
        XCTAssertEqual(result, checkingStr)
    }
    
}
