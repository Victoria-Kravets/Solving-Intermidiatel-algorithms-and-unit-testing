//
//  SpinalTapCase.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/14/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Convert a string to spinal case. Spinal case is all-lowercase-words-joined-by-dashes.
 */

import Foundation
class SpinalTapCase{
    func spinalCase(originalStr: String) -> String{
        //let str = originalStr.lowercased()
        var currentStr = ""
        var state = true
        for char in originalStr.characters {
            let str = String(char)
            if str == " "  || str == "_" || str == "-" {
                currentStr.insert("-", at: currentStr.endIndex)
                state = false
            }else if str.uppercased() == str && char != originalStr.characters.first && state == true {
                currentStr.insert("-", at: currentStr.endIndex)
                currentStr.insert(char, at: currentStr.endIndex)
            }
            else{
                currentStr.insert(char, at: currentStr.endIndex)
                state = true
            }
        }
        let resultStr = currentStr.lowercased()
        return resultStr
    }
} 
