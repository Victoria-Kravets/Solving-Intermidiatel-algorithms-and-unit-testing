//
//  BinaryAgentsTests.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/15/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_Intermidiatel_algorithms_and_unit_testing

class BinaryAgentsTests: XCTestCase {
    let binaryAgents = BinaryAgents()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testBinaryAgent() {
        let binaryStr = "01000001 01110010 01100101 01101110 00100111 01110100 00100000 01100010 01101111 01101110 01100110 01101001 01110010 01100101 01110011 00100000 01100110 01110101 01101110 00100001 00111111"
        let checkingStr = "Aren't bonfires fun!?"
        let resultStr = binaryAgents.binaryAgent(binaryStr: binaryStr)
        XCTAssertEqual(resultStr, checkingStr)
    }
    func testBinaryAgentCheck2() {
        let binaryStr = "01001001 00100000 01101100 01101111 01110110 01100101 00100000 01000110 01110010 01100101 01100101 01000011 01101111 01100100 01100101 01000011 01100001 01101101 01110000 00100001"
        let checkingStr = "I love FreeCodeCamp!"
        let resultStr = binaryAgents.binaryAgent(binaryStr: binaryStr)
        XCTAssertEqual(resultStr, checkingStr)
    }
    
}
