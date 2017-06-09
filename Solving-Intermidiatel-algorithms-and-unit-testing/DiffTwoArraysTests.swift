//
//  DiffTwoArraysTests.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/9/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_Intermidiatel_algorithms_and_unit_testing

class DiffTwoArraysTests: XCTestCase {
    let diffTwoArrays = DiffTwoArrays()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDiffArray() {
        let firstArray = [1, 2, 3, 5]
        let secondArray = [1, 2, 3, 4, 5]
        let checkingArray = [4]
        let resultArray = diffTwoArrays.diffArray(firstArray: firstArray, secondArray: secondArray)
        XCTAssert(resultArray is Array<Int>)
        XCTAssertEqual(resultArray, checkingArray)
    }
    func testDiffArrayCheck2() {
        let firstArray = ["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"]
        let secondArray = ["diorite", "andesite", "grass", "dirt", "dead shrub"]
        let checkingArray = ["pink wool"]
        let resultArray = diffTwoArrays.diffArray(firstArray: firstArray, secondArray: secondArray)
        XCTAssert(resultArray is Array<String>)
        XCTAssertEqual(resultArray, checkingArray)
    }
    func testDiffArrayCheck3() {
        let firstArray = ["andesite", "grass", "dirt", "pink wool", "dead shrub"]
        let secondArray = ["diorite", "andesite", "grass", "dirt", "dead shrub", "qwe"]
        let checkingArray = ["pink wool", "diorite", "qwe"]
        let resultArray = diffTwoArrays.diffArray(firstArray: firstArray, secondArray: secondArray)
        XCTAssert(resultArray is Array<String>)
        XCTAssertEqual(resultArray, checkingArray)
    }
    func testDiffArrayCheck4() {
        let firstArray = ["andesite", "grass", "dirt", "dead shrub"]
        let secondArray = ["andesite", "grass", "dirt", "dead shrub"]
        let checkingArray = [String]()
        let resultArray = diffTwoArrays.diffArray(firstArray: firstArray, secondArray: secondArray)
        XCTAssert(resultArray is Array<String>)
        XCTAssertEqual(resultArray, checkingArray)
    }
    func testDiffArrayCheck5() {
        let firstArray = [1, "calf", 3, "piglet"] as [Any]
        let secondArray = [1, "calf", 3, 4] as [Any]
        let checkingArray = ["piglet", 4] as [Any]
        let resultArray = diffTwoArrays.diffArray(firstArray: firstArray, secondArray: secondArray)
        XCTAssert(resultArray is Array<Any>)
        XCTAssertEqual(resultArray[0] as! String, checkingArray[0] as! String)
        XCTAssertEqual(resultArray[1] as! Int, checkingArray[1] as! Int)
    }
    func testDiffArrayCheck6() {
        let firstArray = [String]()
        let secondArray = ["snuffleupagus", "cookie monster", "elmo"]
        let checkingArray = ["snuffleupagus", "cookie monster", "elmo"]
        let resultArray = diffTwoArrays.diffArray(firstArray: firstArray, secondArray: secondArray)
        XCTAssertEqual(resultArray, checkingArray)
        
    }
    func testDiffArrayCheck7() {
        let firstArray = [1, "calf", 3, "piglet"] as [Any]
        let secondArray = [7, "filly"] as [Any]
        let checkingArray = [1, "calf", 3, "piglet", 7, "filly"] as [Any]
        let resultArray = diffTwoArrays.diffArray(firstArray: firstArray, secondArray: secondArray)
        XCTAssert(resultArray is Array<Any>)
        XCTAssertEqual(resultArray[0] as! Int, checkingArray[0] as! Int)
        XCTAssertEqual(resultArray[1] as! String, checkingArray[1] as! String)
        XCTAssertEqual(resultArray[2] as! Int, checkingArray[2] as! Int)
        XCTAssertEqual(resultArray[3] as! String, checkingArray[3] as! String)
        XCTAssertEqual(resultArray[4] as! Int, checkingArray[4] as! Int)
        XCTAssertEqual(resultArray[5] as! String, checkingArray[5] as! String)
    }
    
    
    
}
