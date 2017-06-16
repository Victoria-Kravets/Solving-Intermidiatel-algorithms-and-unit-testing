//
//  FindersKeepers.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/15/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Create a function that looks through an array (first argument) and returns the first element in the array that passes a truth test (second argument).
 */

import Foundation
class FindersKeepers{
    func findElement(originalArray: Array<Int>, function: (Int)->(Bool)) -> Any{
        for element in originalArray {
            let result = function(element)
            if result == true {
                return element
            }
        }
       return ""
    }
}
