//
//  BinaryAgents.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/15/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Return an English translated sentence of the passed binary string.
 The binary string will be space separated.
 */

import Foundation
class BinaryAgents{
    func binaryAgent(binaryStr: String) -> String{
        var arrayOfBinaryDigits = [String]()
        var arrayOfUnicodeDigits = [Int]()
        var binaryDigit = ""
        var unicode = 0
        var n = 7
        var result = ""
        for char in binaryStr.characters {
            if char == " " {
                arrayOfBinaryDigits.append(binaryDigit)
                binaryDigit = ""
                
            }else{
               binaryDigit.append(char)
            }
        }
        arrayOfBinaryDigits.append(binaryDigit)
        for element in arrayOfBinaryDigits {
            
            for digit in element.characters {
                if digit == "1"{
                    unicode += Int(1 * pow(2.0, Double(n)))
                }
                n -= 1
            }
            arrayOfUnicodeDigits.append(unicode)
            unicode = 0
            n = 7
        }
        for char in arrayOfUnicodeDigits{
            result.append(String(Character(UnicodeScalar(char)!)))
        }
        return result
    }
}
