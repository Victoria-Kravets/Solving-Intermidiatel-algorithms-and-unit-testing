//
//  RomanNumeralConverterTests.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/9/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_Intermidiatel_algorithms_and_unit_testing

class RomanNumeralConverterTests: XCTestCase {
    let romanNumeralConverter = RomanNumeralConverter()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testConvertToRoman(){
       let numeric = 2
        let checkingNumeric = "ⅠⅠ"
        let resultNumeric = romanNumeralConverter.convertToRoman(numeric: numeric)
        XCTAssert(resultNumeric is String)
        XCTAssertEqual(resultNumeric, checkingNumeric)
    }
    func testConvertToRomanCheck2(){
        let numeric = 3
        let checkingNumeric = "ⅠⅠⅠ"
        let resultNumeric = romanNumeralConverter.convertToRoman(numeric: numeric)
        XCTAssert(resultNumeric is String)
        XCTAssertEqual(resultNumeric, checkingNumeric)
    }
    func testConvertToRomanCheck3(){
        let numeric = 5
        let checkingNumeric = "Ⅴ"
        let resultNumeric = romanNumeralConverter.convertToRoman(numeric: numeric)
        XCTAssert(resultNumeric is String)
        XCTAssertEqual(resultNumeric, checkingNumeric)
    }

    func testConvertToRomanCheck4(){
        let numeric = 8
        let checkingNumeric = "ⅤⅠⅠⅠ"
        let resultNumeric = romanNumeralConverter.convertToRoman(numeric: numeric)
        XCTAssert(resultNumeric is String)
        XCTAssertEqual(resultNumeric, checkingNumeric)
    }

    func testConvertToRomanCheck5(){
        let numeric = 9
        let checkingNumeric = "ⅠⅩ"
        let resultNumeric = romanNumeralConverter.convertToRoman(numeric: numeric)
        XCTAssert(resultNumeric is String)
        XCTAssertEqual(resultNumeric, checkingNumeric)
    }

    func testConvertToRomanCheck6(){
        let numeric = 12
        let checkingNumeric = "ⅩⅠⅠ"
        let resultNumeric = romanNumeralConverter.convertToRoman(numeric: numeric)
        XCTAssert(resultNumeric is String)
        XCTAssertEqual(resultNumeric, checkingNumeric)
    }

    func testConvertToRomanCheck7(){
        let numeric = 16
        let checkingNumeric = "ⅩⅤⅠ"
        let resultNumeric = romanNumeralConverter.convertToRoman(numeric: numeric)
        XCTAssert(resultNumeric is String)
        XCTAssertEqual(resultNumeric, checkingNumeric)
    }

    func testConvertToRomanCheck8(){
        let numeric = 29
        let checkingNumeric = "ⅩⅩⅠⅩ"
        let resultNumeric = romanNumeralConverter.convertToRoman(numeric: numeric)
        XCTAssert(resultNumeric is String)
        XCTAssertEqual(resultNumeric, checkingNumeric)
    }

    func testConvertToRomanCheck9(){
        let numeric = 44
        let checkingNumeric = "ⅩⅬⅠⅤ"
        let resultNumeric = romanNumeralConverter.convertToRoman(numeric: numeric)
        XCTAssert(resultNumeric is String)
        XCTAssertEqual(resultNumeric, checkingNumeric)
    }

    func testConvertToRomanCheck10(){
        let numeric = 45
        let checkingNumeric = "ⅩⅬⅤ"
        let resultNumeric = romanNumeralConverter.convertToRoman(numeric: numeric)
        XCTAssert(resultNumeric is String)
        XCTAssertEqual(resultNumeric, checkingNumeric)
    }

    func testConvertToRomanCheck11(){
        let numeric = 68
        let checkingNumeric = "ⅬⅩⅤⅠⅠⅠ"
        let resultNumeric = romanNumeralConverter.convertToRoman(numeric: numeric)
        XCTAssert(resultNumeric is String)
        XCTAssertEqual(resultNumeric, checkingNumeric)
    }

    func testConvertToRomanCheck12(){
        let numeric = 83
        let checkingNumeric = "ⅬⅩⅩⅩⅠⅠⅠ"
        let resultNumeric = romanNumeralConverter.convertToRoman(numeric: numeric)
        XCTAssert(resultNumeric is String)
        XCTAssertEqual(resultNumeric, checkingNumeric)
    }
    func testConvertToRomanCheck13(){
        let numeric = 97
        let checkingNumeric = "ⅩⅭⅤⅠⅠ"
        let resultNumeric = romanNumeralConverter.convertToRoman(numeric: numeric)
        XCTAssert(resultNumeric is String)
        XCTAssertEqual(resultNumeric, checkingNumeric)
    }

    func testConvertToRomanCheck14(){
        let numeric = 99
        let checkingNumeric = "ⅩⅭⅠⅩ"
        let resultNumeric = romanNumeralConverter.convertToRoman(numeric: numeric)
        XCTAssert(resultNumeric is String)
        XCTAssertEqual(resultNumeric, checkingNumeric)
    }

    func testConvertToRomanCheck15(){
        let numeric = 500
        let checkingNumeric = "Ⅾ"
        let resultNumeric = romanNumeralConverter.convertToRoman(numeric: numeric)
        XCTAssert(resultNumeric is String)
        XCTAssertEqual(resultNumeric, checkingNumeric)
    }

    func testConvertToRomanCheck16(){
        let numeric = 501
        let checkingNumeric = "ⅮⅠ"
        let resultNumeric = romanNumeralConverter.convertToRoman(numeric: numeric)
        XCTAssert(resultNumeric is String)
        XCTAssertEqual(resultNumeric, checkingNumeric)
    }

    func testConvertToRomanCheck17(){
        let numeric = 649
        let checkingNumeric = "ⅮⅭⅩⅬⅠⅩ"
        let resultNumeric = romanNumeralConverter.convertToRoman(numeric: numeric)
        XCTAssert(resultNumeric is String)
        XCTAssertEqual(resultNumeric, checkingNumeric)
    }

    func testConvertToRomanCheck18(){
        let numeric = 798
        let checkingNumeric = "ⅮⅭⅭⅩⅭⅤⅠⅠⅠ"
        let resultNumeric = romanNumeralConverter.convertToRoman(numeric: numeric)
        XCTAssert(resultNumeric is String)
        XCTAssertEqual(resultNumeric, checkingNumeric)
    }

    func testConvertToRomanCheck19(){
        let numeric = 891
        let checkingNumeric = "ⅮⅭⅭⅭⅩⅭⅠ"
        let resultNumeric = romanNumeralConverter.convertToRoman(numeric: numeric)
        XCTAssert(resultNumeric is String)
        XCTAssertEqual(resultNumeric, checkingNumeric)
    }

    func testConvertToRomanCheck20(){
        let numeric = 1000
        let checkingNumeric = "Ⅿ"
        let resultNumeric = romanNumeralConverter.convertToRoman(numeric: numeric)
        XCTAssert(resultNumeric is String)
        XCTAssertEqual(resultNumeric, checkingNumeric)
    }

    func testConvertToRomanCheck21(){
        let numeric = 1004
        let checkingNumeric = "ⅯⅠⅤ"
        let resultNumeric = romanNumeralConverter.convertToRoman(numeric: numeric)
        XCTAssert(resultNumeric is String)
        XCTAssertEqual(resultNumeric, checkingNumeric)
    }

    func testConvertToRomanCheck22(){
        let numeric = 1006
        let checkingNumeric = "ⅯⅤⅠ"
        let resultNumeric = romanNumeralConverter.convertToRoman(numeric: numeric)
        XCTAssert(resultNumeric is String)
        XCTAssertEqual(resultNumeric, checkingNumeric)
    }

    func testConvertToRomanCheck23(){
        let numeric = 1023
        let checkingNumeric = "ⅯⅩⅩⅠⅠⅠ"
        let resultNumeric = romanNumeralConverter.convertToRoman(numeric: numeric)
        XCTAssert(resultNumeric is String)
        XCTAssertEqual(resultNumeric, checkingNumeric)
    }

    func testConvertToRomanCheck24(){
        let numeric = 2014
        let checkingNumeric = "ⅯⅯⅩⅠⅤ"
        let resultNumeric = romanNumeralConverter.convertToRoman(numeric: numeric)
        XCTAssert(resultNumeric is String)
        XCTAssertEqual(resultNumeric, checkingNumeric)
    }

    func testConvertToRomanCheck25(){
        let numeric = 3999
        let checkingNumeric = "ⅯⅯⅯⅭⅯⅩⅭⅠⅩ"
        let resultNumeric = romanNumeralConverter.convertToRoman(numeric: numeric)
        XCTAssert(resultNumeric is String)
        XCTAssertEqual(resultNumeric, checkingNumeric)
    }

    
}
