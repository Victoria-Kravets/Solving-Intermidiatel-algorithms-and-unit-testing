//
//  DropIt.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/16/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Drop the elements of an array (first argument), starting from the front, until the predicate (second argument) returns true.
  The second argument, func, is a function you'll use to test the first elements of the array to decide if you should drop it or not.
 Return the rest of the array, otherwise return an empty array.
 */

import Foundation
class DropIt{
    func dropElements(originalArray: Array<Int>, function: (_ num: Int)->(Bool))-> Array<Int>{
        var result = false
        var resultArray = [Int]()
        for element in originalArray{
            if !resultArray.isEmpty {
                resultArray.append(element)
            }else{
                result = function(element)
                if result == true{
                    resultArray.append(element)
                }
            }
        }
       return resultArray
    }
}
