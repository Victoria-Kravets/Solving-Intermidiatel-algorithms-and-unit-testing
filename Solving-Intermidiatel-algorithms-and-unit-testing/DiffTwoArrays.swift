//
//  DiffTwoArrays.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/9/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Compare two arrays and return a new array with any items only found in one of the two given arrays, but not both. In other words, return the symmetric difference of the two arrays.
 */

import Foundation
class DiffTwoArrays{

    func diffArray<T>(firstArray: Array<T>, secondArray: Array<T>) -> Array<T>{
        var newArrayFirst = firstArray
        var newArraySecond = secondArray
        var firstNewArrayFirst = firstArray
        var secondNewArraySecond = secondArray
        
        if secondArray.isEmpty{
            newArraySecond = secondArray
        }else{
            if !firstArray.isEmpty{
                for elementInFirstArray in 0...firstArray.count - 1 {
                    for elementInSecondArray in 0...newArraySecond.count - 1 {
                        if elementInSecondArray >= newArraySecond.count{
                            break
                        }
                        if newArrayFirst[elementInFirstArray] is String{
                            if newArraySecond[elementInSecondArray] is String{
                                if (newArrayFirst[elementInFirstArray]as! String) == (newArraySecond[elementInSecondArray] as! String){
                                   newArraySecond.remove(at: elementInSecondArray)
                                    
                                }
                            }
                        }else {
                            if newArraySecond[elementInSecondArray] is Int{
                                if (newArrayFirst[elementInFirstArray]as! Int) == (newArraySecond[elementInSecondArray] as! Int){
                                    newArraySecond.remove(at: elementInSecondArray)
                                }
                            }
                        }
                    }
                } 
            }
        }
        
        if firstArray.isEmpty{
            firstNewArrayFirst = firstArray
        }else{
            for elementInSecondArray in 0...secondArray.count - 1 {
                for elementInFirstArray in 0...firstNewArrayFirst.count - 1 {
                    if elementInFirstArray >= firstNewArrayFirst.count{
                        break
                    }
                    if secondNewArraySecond[elementInSecondArray] is String{
                        if firstNewArrayFirst[elementInFirstArray] is String{
                            if (secondNewArraySecond[elementInSecondArray] as! String) == (firstNewArrayFirst[elementInFirstArray] as! String){
                                firstNewArrayFirst.remove(at: elementInFirstArray)
                            }
                        }
                    }else{
                        if firstNewArrayFirst[elementInFirstArray] is Int{
                            if (secondNewArraySecond[elementInSecondArray] as! Int) == (firstNewArrayFirst[elementInFirstArray] as! Int){
                                firstNewArrayFirst.remove(at: elementInFirstArray)
                            }
                        }
                    }
                }
            }
        }
        return firstNewArrayFirst + newArraySecond
    }
}
