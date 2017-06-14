//
//  SortedUnion.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/14/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*Write a function that takes two or more arrays and returns a new array of unique values in the order of the original provided arrays.
 In other words, all values present from all arrays should be included in their original order, but with no duplicates in the final array.
 The unique numbers should be sorted by their original order, but the final array should not be sorted in numerical order.
*/

import Foundation
class SortedUnion {
    func uniteUnique(originalArray: Array<Array<Any>>) -> Array<Any>{
        var resultArray = [Any]()
        var arrayOfDigits = [Any]()
        var state = true
        for element in originalArray {
            for digitIsInt in element {
                if digitIsInt is Int {
                    arrayOfDigits.append(digitIsInt as! Int)
                }else{
                    arrayOfDigits.append(digitIsInt as! Any)
                }
            }
        }
        for digit in arrayOfDigits {
            if resultArray.isEmpty{
                resultArray.append(digit)
            }else{
              state = true
                for diginInResultArray in resultArray {
                    if digit is Int && diginInResultArray is Int{
                        if diginInResultArray as! Int == digit as! Int{
                            resultArray.append(diginInResultArray)
                            resultArray.removeLast()
                            state = false
                        }
                    }else if digit is Array<Int> && diginInResultArray is Int{
                        for str in digit as! Array<Int> {
                            if str as! Int == diginInResultArray as! Int{
                                resultArray.append(digit)
                                resultArray.removeLast()
                                state = false
                            }
                        }
                    }
                }
                if state == true {
                    resultArray.append(digit)
                }
            }
        }
        return resultArray
    }
}
