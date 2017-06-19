//
//  SumAllNumbersInRange.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/9/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 We'll pass you an array of two numbers. Return the sum of those two numbers and all numbers between them.
 The lowest number will not always come first.
 */

import Foundation
class SumAllNumbersInRange{
    func sumAll(originalArray: Array<Int>) -> Int{
        var firstDigit = 0
        var lastDigit = 0
        var result = 0
        if originalArray[0] < originalArray[1] {
            firstDigit = originalArray[0]
            lastDigit = originalArray[1]
        } else{
            firstDigit = originalArray[1]
            lastDigit = originalArray[0]
        }
        for digit in firstDigit...lastDigit{
            result = result + digit
        }
        return result
    }
}
