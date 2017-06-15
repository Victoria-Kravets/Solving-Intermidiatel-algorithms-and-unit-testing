//
//  SmallestCommonMultiple.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/15/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Find the smallest common multiple of the provided parameters that can be evenly divided by both, as well as by all sequential numbers in the range between these parameters.
 The range will be an array of two numbers that will not necessarily be in numerical order.
 e.g. for 1 and 3 - find the smallest common multiple of both 1 and 3 that is evenly divisible by all numbers between 1 and 3.
 */

import Foundation
class SmallestCommonMultiple{
    func smallestCommons(range: Array<Int>) -> Int{
        var arrayOfRangeElements = [Int]()
        var newRange = [Int]()
        var count = 1
        var n = 0
        var result = 0
        var countElementInrange = 0
        if range.first! > range.last! {
            newRange.append(range.last!)
            newRange.append(range.first!)
        }else{
            newRange.append(range.first!)
            newRange.append(range.last!)
        }
        for element in newRange.first!...newRange.last!{
            if  !arrayOfRangeElements.isEmpty {
                if element < arrayOfRangeElements.last!{
                    arrayOfRangeElements.insert(element, at: arrayOfRangeElements.startIndex)
                }else{
                    arrayOfRangeElements.append(element)
                }
            }else{
                arrayOfRangeElements.append(element)

            }
        }
        countElementInrange = arrayOfRangeElements.count
        while n != countElementInrange{
            if (n == countElementInrange - 1) {
                return result
            }else{
                result = arrayOfRangeElements[0] * count * arrayOfRangeElements[1]
                for item in 2...countElementInrange - 1 {
                    if result % arrayOfRangeElements[item] != 0{
                        break
                    }
                    n = item
                }
                count += 1
            }
        }
        return 0
    }
}
