//
//  SearchAndReplaceTests.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/12/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_Intermidiatel_algorithms_and_unit_testing

class SearchAndReplaceTests: XCTestCase {
    let searchAndReplace = SearchAndReplace()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testMyReplace() {
        let originalStr = "Let us go to the store"
        let wordInStr = "store"
        let newWord = "mall"
        let checkingStr = "Let us go to the mall"
        let resultStr = searchAndReplace.myReplace(originalStr: originalStr, wordInStr: wordInStr, newWord: newWord)
        XCTAssertEqual(resultStr, checkingStr)
    }
    func testMyReplaceCheck2() {
        let originalStr = "He is Sleeping on the couch"
        let wordInStr = "Sleeping"
        let newWord = "sitting"
        let checkingStr = "He is Sitting on the couch"
        let resultStr = searchAndReplace.myReplace(originalStr: originalStr, wordInStr: wordInStr, newWord: newWord)
        XCTAssertEqual(resultStr, checkingStr)
    }
    func testMyReplaceCheck3() {
        let originalStr = "This has a spellngi error"
        let wordInStr = "spellngi"
        let newWord = "spelling"
        let checkingStr = "This has a spelling error"
        let resultStr = searchAndReplace.myReplace(originalStr: originalStr, wordInStr: wordInStr, newWord: newWord)
        XCTAssertEqual(resultStr, checkingStr)
    }
    func testMyReplaceCheck4() {
        let originalStr = "His name is Tom"
        let wordInStr = "Tom"
        let newWord = "john"
        let checkingStr = "His name is John"
        let resultStr = searchAndReplace.myReplace(originalStr: originalStr, wordInStr: wordInStr, newWord: newWord)
        XCTAssertEqual(resultStr, checkingStr)
    }
    func testMyReplaceCheck5() {
        let originalStr = "Let us get back to more Coding"
        let wordInStr = "Coding"
        let newWord = "algorithms"
        let checkingStr = "Let us get back to more Algorithms"
        let resultStr = searchAndReplace.myReplace(originalStr: originalStr, wordInStr: wordInStr, newWord: newWord)
        XCTAssertEqual(resultStr, checkingStr)
    }
    
    
    
}
