//
//  DNAPairing.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/14/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 The DNA strand is missing the pairing element. Take each character, get its pair, and return the results as a 2d array.
 Return the provided character as the first element in each array.
 For example, for the input GCG, return [["G", "C"], ["C","G"],["G", "C"]]
 The character and its pair are paired up in an array, and all the arrays are grouped into one encapsulating array.
 */

import Foundation
class DNAPairing{
    func pairElement(dnaStr: String) -> Array<Array<String>>{
        var resultArray = [[String]()]
        var pairArray = [String]()
        resultArray.removeAll()
        for char in dnaStr.characters {
            if char == "A"{
                pairArray.append(String(char))
                pairArray.append("T")
            }
            if char == "T"{
                pairArray.append(String(char))
                pairArray.append("A")
            }
            if char == "C"{
                pairArray.append(String(char))
                pairArray.append("G")
            }
            if char == "G"{
                pairArray.append(String(char))
                pairArray.append("C")
            }
            resultArray.append(pairArray)
            pairArray = []
        }
        return resultArray
    }
}
