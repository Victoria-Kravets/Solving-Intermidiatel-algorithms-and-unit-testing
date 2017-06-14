//
//  BooWhoTests.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/14/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_Intermidiatel_algorithms_and_unit_testing

class BooWhoTests: XCTestCase {
    let booWho = BooWho()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testBooWhoFunc() {
        let object = true
        let result = booWho.booWhoFunc(object: object)
        XCTAssert(result)
    }
    func testBooWhoFuncCheck2() {
        let object = false
        let result = booWho.booWhoFunc(object: object)
        XCTAssert(result)
    }
    func testBooWhoFuncCheck3() {
        let object = [1, 2, 3]
        let result = booWho.booWhoFunc(object: object)
        XCTAssertFalse(result)
    }
    func testBooWhoFuncCheck4() {
        let object = [].count
        let result = booWho.booWhoFunc(object: object)
        XCTAssertFalse(result)
    }
    func testBooWhoFuncCheck5() {
        let object = ["a": 1]
        let result = booWho.booWhoFunc(object: object)
        XCTAssertFalse(result)
    }
    func testBooWhoFuncCheck6() {
        let object = 1
        let result = booWho.booWhoFunc(object: object)
        XCTAssertFalse(result)
    }
    func testBooWhoFuncCheck7() {
        let object = "a"
        let result = booWho.booWhoFunc(object: object)
        XCTAssertFalse(result)
    }
    func testBooWhoFuncCheck8() {
        let object = "true"
        let result = booWho.booWhoFunc(object: object)
        XCTAssertFalse(result)
    }
    func testBooWhoFuncCheck9() {
        let object = "false"
        let result = booWho.booWhoFunc(object: object)
        XCTAssertFalse(result)
    }

    
    
    
}
