//
//  WhereforeArtThou.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/12/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Make a function that looks through an array of objects (first argument) and returns an array of all objects that have matching property and value pairs (second argument). Each property and value pair of the source object has to be present in the object from the collection if it is to be included in the returned array.
 For example, if the first argument is [{ first: "Romeo", last: "Montague" }, { first: "Mercutio", last: null }, { first: "Tybalt", last: "Capulet" }], and the second argument is { last: "Capulet" }, then you must return the third object from the array (the first argument), because it contains the property and its value, that was passed on as the second argument.
 */

import Foundation
class WhereforeArtThou{
    func whatIsInAName(firstArray: Array<Dictionary<String, Any>>, secondArray: Array<Dictionary<String, Any>>) ->  Array<Dictionary<String, Any>>{
        var resultArray: Array<Dictionary<String, Any>> = [["":""]]
        resultArray.removeAll()
        for element in firstArray{
            for value in element {
                for elementInSecondArray in secondArray {
                    for valueInSecondArray in elementInSecondArray{
                        if value.value is String{
                            if value.value as! String == valueInSecondArray.value as! String {
                              resultArray.append(element)
                            }
                        }else if value.value is Int{
                            if value.value as! Int == valueInSecondArray.value as! Int {
                                resultArray.append(element)
                            }
                        }
                    }
                }
            }
        }
        return resultArray
    }
}
