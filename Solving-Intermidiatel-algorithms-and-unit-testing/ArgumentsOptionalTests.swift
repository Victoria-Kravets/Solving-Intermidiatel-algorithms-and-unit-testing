//
//  ArgumentsOptionalTests.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/16/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_Intermidiatel_algorithms_and_unit_testing

class ArgumentsOptionalTests: XCTestCase {
    let argumentsOptional = ArgumentsOptional()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAddTogether() {
        let firstArg = 2
        let secondArg = 3
        let checkingDigit = 5
        let result = argumentsOptional.addTogether(firstArg: firstArg, secondArg: secondArg)
        XCTAssertEqual(result as! Int, checkingDigit)
    }
    func testAddTogetherCheck2() {
        let firstArg = 2
        let secondArg = 3
        let checkingDigit = 5
       // let result1 = argumentsOptional.addTogether(firstArg: firstArg, secondArg: {(n:Int)->(Int) in return n + 3})
        let sumTwoAnd: (Int)->(Int) = argumentsOptional.addTogether(firstArg: firstArg) as! (Int) -> (Int)
        let result = argumentsOptional.addTogether(firstArg: secondArg, secondArg: sumTwoAnd)
        XCTAssertEqual(result as! Int, checkingDigit)
    }
    func testAddTogetherCheck3() {
        let firstArg = "http://bit.ly/IqT6zt"
        let sumTwoAnd: (Int)->(Int) = argumentsOptional.addTogether(firstArg: firstArg) as (Int) -> (Int) as! (Int) -> (Int)
        
        XCTAssertFalse(sumTwoAnd is Int)
    }
    func testAddTogetherCheck4() {
        let firstArg = 2
        let secondArg = "3"
        let result = argumentsOptional.addTogether(firstArg: firstArg, secondArg: secondArg)
        XCTAssertEqual(result as! Int, -1)
    }
    func testAddTogetherCheck5() {
        let firstArg = 2
        let secondArg = [3]
        let result = argumentsOptional.addTogether(firstArg: firstArg, secondArg: secondArg)
         XCTAssertEqual(result as! Int, -1)
    }
    
    
}
