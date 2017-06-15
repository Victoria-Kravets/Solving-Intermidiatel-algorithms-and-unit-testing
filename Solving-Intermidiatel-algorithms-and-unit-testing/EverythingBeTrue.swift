//
//  EverythingBeTrue.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/15/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Check if the predicate (second argument) is truthy on all elements of a collection (first argument).
 */

import Foundation
class EverythingBeTrue{
    func truthCheck(originalArray: Array<Dictionary<String, Any>>, key: String) -> Bool{
        var count = 0
        for pairsKeyValue in originalArray{
            for pairKeyValue in pairsKeyValue {
                if pairKeyValue.key == key {
                    if pairKeyValue.value is Int {
                        if (pairKeyValue.value as! Int) <= 0 {
                            return false
                        }
                    }else if pairKeyValue.value is String{
                        if (pairKeyValue.value as! String == ""){
                            return false
                        }
                    }else if !(pairKeyValue.value is Int) && !(pairKeyValue.value is String)  && !(pairKeyValue.value is Bool){
                        return false
                    }
                    count += 1
                }
            }
        }
        if count == originalArray.count {
            return true
        }else{
            return false
        }
    }
}
