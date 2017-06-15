//
//  Steamroller.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/15/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Flatten a nested array. You must account for varying levels of nesting.
 */

import Foundation
class Steamroller{
    func steamrollArray(originalArray: Array<Any>) -> Array<Any>{
        var resultArray = [Any]()
        for element in originalArray {
            if element is String {
                resultArray.append(element)
            }else if element is Int {
                resultArray.append(element)
            }else if element is (()->()){
                resultArray.append(element)
            }else if element is Any {
                if element is Array<Any>{
                    for item in element as! Array<Any> {
                        if item is String {
                            resultArray.append(item)
                        }else if item is Int {
                            resultArray.append(item)
                        }else if item is Any{
                            for i in item as! Array<Any> {
                                if i is String {
                                    resultArray.append(i)
                                }else if i is Int {
                                    resultArray.append(i)
                                }else if i is Any{
                                    for j in i as! Array<Any> {
                                        if j is String {
                                            resultArray.append(j)
                                        }else if j is Int {
                                            resultArray.append(j)
                                        }
                                    }
                                }
                            }
                            
                        }
                    }
                }
                
            }
        }
        return resultArray
    }
}
