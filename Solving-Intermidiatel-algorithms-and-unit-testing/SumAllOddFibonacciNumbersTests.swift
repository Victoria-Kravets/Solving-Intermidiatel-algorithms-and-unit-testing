//
//  SumAllOddFibonacciNumbersTests.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/14/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_Intermidiatel_algorithms_and_unit_testing

class SumAllOddFibonacciNumbersTests: XCTestCase {
    let sumAllOddFibonacciNumbers = SumAllOddFibonacciNumbers()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSumFibs() {
        let digit = 4
        let checkingDigit = 5
        let result = sumAllOddFibonacciNumbers.sumFibs(digit: digit)
        XCTAssert(result is Int)
        XCTAssertEqual(result, checkingDigit)
    }
    func testSumFibsCheck2() {
        let digit = 1000
        let checkingDigit = 1785
        let result = sumAllOddFibonacciNumbers.sumFibs(digit: digit)
        XCTAssertEqual(result, checkingDigit)
    }
    func testSumFibsCkeck3() {
        let digit = 4000000
        let checkingDigit = 4613732
        let result = sumAllOddFibonacciNumbers.sumFibs(digit: digit)
        XCTAssertEqual(result, checkingDigit)
    }
    func testSumFibsCheck4() {
        let digit = 75024
        let checkingDigit = 60696
        let result = sumAllOddFibonacciNumbers.sumFibs(digit: digit)
        XCTAssertEqual(result, checkingDigit)
    }
    func testSumFibsCheck5() {
        let digit = 75025
        let checkingDigit = 135721
        let result = sumAllOddFibonacciNumbers.sumFibs(digit: digit)
        XCTAssertEqual(result, checkingDigit)
    }
    
}
