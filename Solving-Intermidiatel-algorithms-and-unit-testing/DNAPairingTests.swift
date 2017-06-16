//
//  DNAPairingTests.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/14/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_Intermidiatel_algorithms_and_unit_testing

class DNAPairingTests: XCTestCase {
    let dnaPairing = DNAPairing()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPairElement() {
        let originalStr = "ATCGA"
        let checkingArray = [["A","T"],["T","A"],["C","G"],["G","C"],["A","T"]]
        let result = dnaPairing.pairElement(dnaStr: originalStr)
        XCTAssertEqual(result[0], checkingArray[0])
        XCTAssertEqual(result[1], checkingArray[1])
        XCTAssertEqual(result[2], checkingArray[2])
        XCTAssertEqual(result[3], checkingArray[3])
        XCTAssertEqual(result[4], checkingArray[4])
    }
    func testPairElementCheck2() {
        let originalStr = "TTGAG"
        let checkingArray = [["T","A"],["T","A"],["G","C"],["A","T"],["G","C"]]
        let result = dnaPairing.pairElement(dnaStr: originalStr)
        XCTAssertEqual(result[0], checkingArray[0])
        XCTAssertEqual(result[1], checkingArray[1])
        XCTAssertEqual(result[2], checkingArray[2])
        XCTAssertEqual(result[3], checkingArray[3])
        XCTAssertEqual(result[4], checkingArray[4])
    }
    func testPairElementCheck3() {
        let originalStr = "CTCTA"
        let checkingArray = [["C","G"],["T","A"],["C","G"],["T","A"],["A","T"]]
        let result = dnaPairing.pairElement(dnaStr: originalStr)
        XCTAssertEqual(result[0], checkingArray[0])
        XCTAssertEqual(result[1], checkingArray[1])
        XCTAssertEqual(result[2], checkingArray[2])
        XCTAssertEqual(result[3], checkingArray[3])
        XCTAssertEqual(result[4], checkingArray[4])
    }
    
    
}
