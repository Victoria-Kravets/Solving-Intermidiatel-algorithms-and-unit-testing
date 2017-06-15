//
//  SumAllPrimesTests.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/15/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_Intermidiatel_algorithms_and_unit_testing

class SumAllPrimesTests: XCTestCase {
    let sumAllPrimes = SumAllPrimes()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSumPrimes() {
        let digit = 10
        let checkingDigit = 17
        let result = sumAllPrimes.sumPrimes(digit: digit)
        XCTAssertEqual(result, checkingDigit)
    }
   
    
}
