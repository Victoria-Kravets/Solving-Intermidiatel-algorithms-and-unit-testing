//
//  SteamrollerTests.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/15/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_Intermidiatel_algorithms_and_unit_testing

class SteamrollerTests: XCTestCase {
    let steamroller = Steamroller()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSteamrollArray() {
       let originalArray = [[["a"]], [["b"]]]
        let checkingArray = ["a", "b"]
        let result = steamroller.steamrollArray(originalArray: originalArray)
        XCTAssertEqual(result as! Array<String>, checkingArray as! Array<String>)
    }
    func testSteamrollArrayCheck2() {
        let originalArray = [1, [2], [3, [[4]]]] as [Any]
        let checkingArray = [1, 2, 3, 4]
        let result = steamroller.steamrollArray(originalArray: originalArray)
        XCTAssertEqual(result as! Array<Int>, checkingArray as! Array<Int>)
    }
    func testSteamrollArrayCheck3() {
        let originalArray = [1, [], [3, [[4]]]] as [Any]
        let checkingArray = [1, 3, 4]
        let result = steamroller.steamrollArray(originalArray: originalArray)
        XCTAssertEqual(result as! Array<Int>, checkingArray as! Array<Int>)
    }
    func testSteamrollArrayCheck4() {
        let originalArray = [1, {}, [3, [[4]]]] as [Any]
        let checkingArray = [1, {}, 3, 4] as [Any]
        let result = steamroller.steamrollArray(originalArray: originalArray)
        XCTAssertEqual(result[0] as! Int , checkingArray[0] as! Int)
        XCTAssertEqual(result[2] as! Int , checkingArray[2] as! Int)
        XCTAssertEqual(result[3] as! Int , checkingArray[3] as! Int)
        
    }
    
    
}
