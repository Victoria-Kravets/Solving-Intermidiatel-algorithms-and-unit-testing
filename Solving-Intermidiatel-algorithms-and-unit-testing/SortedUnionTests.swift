//
//  SortedUnionTests.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/14/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_Intermidiatel_algorithms_and_unit_testing

class SortedUnionTests: XCTestCase {
    let sortedUnion = SortedUnion()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testUniteUnique() {
        let originalArray = [[1, 3, 2], [5, 2, 1, 4], [2, 1]]
        let checkingArray = [1, 3, 2, 5, 4]
        let resultArray = sortedUnion.uniteUnique(originalArray: originalArray)
        XCTAssertEqual(resultArray as! Array<Int>, checkingArray as! Array<Int>)
    }
    func testUniteUniqueCheck2() {
        let originalArray = [[1, 3, 2], [1, [5]], [2, [4]]]
        let checkingArray = [1, 3, 2, [5], [4]] as [Any]
        let resultArray = sortedUnion.uniteUnique(originalArray: originalArray)
        XCTAssertEqual(resultArray[0] as! Int, checkingArray[0] as! Int)
        XCTAssertEqual(resultArray[1] as! Int, checkingArray[1] as! Int)
        XCTAssertEqual(resultArray[2] as! Int, checkingArray[2] as! Int)
        XCTAssertEqual(resultArray[3] as! Array<Int>, checkingArray[3] as! Array<Int>)
        XCTAssertEqual(resultArray[4] as! Array<Int>, checkingArray[4] as! Array<Int>)
    }
    func testUniteUniqueCheck3() {
        let originalArray = [[1, 2, 3], [5, 2, 1]]
        let checkingArray = [1, 2, 3, 5]
        let resultArray = sortedUnion.uniteUnique(originalArray: originalArray)
        XCTAssertEqual(resultArray as! Array<Int>, checkingArray as! Array<Int>)
    }
    func testUniteUniqueCheck4() {
        let originalArray = [[1, 2, 3], [5, 2, 1, 4], [2, 1], [6, 7, 8]]
        let checkingArray = [1, 2, 3, 5, 4, 6, 7, 8]
        let resultArray = sortedUnion.uniteUnique(originalArray: originalArray)
        XCTAssertEqual(resultArray as! Array<Int>, checkingArray as! Array<Int>)
    }
    
}
