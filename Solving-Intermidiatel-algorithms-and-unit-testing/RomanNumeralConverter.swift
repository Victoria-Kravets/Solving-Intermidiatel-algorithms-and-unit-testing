//
//  RomanNumeralConverter.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/9/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Convert the given number into a roman numeral.
 */

import Foundation
class RomanNumeralConverter{
    func convertToRoman(numeric: Int) -> String{
        let digitToString = String(numeric)
        let reverseString = String(digitToString.characters.reversed())
        var reversedResult = ""
        var temperaryArray = [String]()
        var resultArray = [String]()
        var arryOfDigit = [String]()
        for char in reverseString.characters {
            arryOfDigit.append(String(char))
        }
    
        
        for digit in 0...arryOfDigit.count-1{
            if digit == 0{
                if Int(arryOfDigit[digit])! > 0 && Int(arryOfDigit[digit])! < 4 {
                    for i in 1...Int(arryOfDigit[digit])! {
                        temperaryArray.append(String(Character(UnicodeScalar(8544)!)))
                    }
                }
                if Int(arryOfDigit[digit])! == 4 {
                   temperaryArray.append(String(Character(UnicodeScalar(8544)!)))
                   temperaryArray.append(String(Character(UnicodeScalar(8548)!)))
                }else if Int(arryOfDigit[digit])! == 5 {
                   temperaryArray.append(String(Character(UnicodeScalar(8548)!)))
                }else if Int(arryOfDigit[digit])! > 5 && Int(arryOfDigit[digit])! <= 8 {
                    temperaryArray.append(String(Character(UnicodeScalar(8548)!)))
                    for i in 6...Int(arryOfDigit[digit])! {
                        temperaryArray.append(String(Character(UnicodeScalar(8544)!)))
                    }
                }else if Int(arryOfDigit[digit])! == 9{
                    temperaryArray.append(String(Character(UnicodeScalar(8544)!)))
                    temperaryArray.append(String(Character(UnicodeScalar(8553)!)))
                }
                let str = temperaryArray.joined().characters.reversed()
                resultArray.append(String(str))
            }else if digit == 1{
                temperaryArray = []
                if Int(arryOfDigit[digit])! >= 1 && Int(arryOfDigit[digit])! <= 3 {
                    for i in 1...Int(arryOfDigit[digit])! {
                       temperaryArray.append(String(Character(UnicodeScalar(8553)!)))
                    }
                }else if Int(arryOfDigit[digit])! == 4 {
                    temperaryArray.append(String(Character(UnicodeScalar(8553)!)))
                    temperaryArray.append(String(Character(UnicodeScalar(8556)!)))
                }else if Int(arryOfDigit[digit])! == 5 {
                    temperaryArray.append(String(Character(UnicodeScalar(8556)!)))
                }else if Int(arryOfDigit[digit])! > 5 && Int(arryOfDigit[digit])! <= 8 {
                    temperaryArray.append(String(Character(UnicodeScalar(8556)!)))
                    for i in 6...Int(arryOfDigit[digit])! {
                        temperaryArray.append(String(Character(UnicodeScalar(8553)!)))
                    }
                }else if Int(arryOfDigit[digit])! == 9{
                    temperaryArray.append(String(Character(UnicodeScalar(8553)!)))
                    temperaryArray.append(String(Character(UnicodeScalar(8557)!)))
                }
                let str = temperaryArray.joined().characters.reversed()
                resultArray.append(String(str))
            
            }else if digit == 2{
                temperaryArray = []
                if Int(arryOfDigit[digit])! >= 1 && Int(arryOfDigit[digit])! <= 3 {
                    for i in 1...Int(arryOfDigit[digit])! {
                        temperaryArray.append(String(Character(UnicodeScalar(8557)!)))
                    }
                }else if Int(arryOfDigit[digit])! == 4 {
                    temperaryArray.append(String(Character(UnicodeScalar(8557)!)))
                    temperaryArray.append(String(Character(UnicodeScalar(8558)!)))
                }else if Int(arryOfDigit[digit])! == 5 {
                    temperaryArray.append(String(Character(UnicodeScalar(8558)!)))
                }else if Int(arryOfDigit[digit])! > 5 && Int(arryOfDigit[digit])! <= 8 {
                    temperaryArray.append(String(Character(UnicodeScalar(8558)!)))
                    for i in 6...Int(arryOfDigit[digit])! {
                        temperaryArray.append(String(Character(UnicodeScalar(8557)!)))
                    }
                }else if Int(arryOfDigit[digit])! == 9{
                    temperaryArray.append(String(Character(UnicodeScalar(8557)!)))
                    temperaryArray.append(String(Character(UnicodeScalar(8559)!)))
                }
                let str = temperaryArray.joined().characters.reversed()
                resultArray.append(String(str))
                
            }else if digit == 3 {
                temperaryArray = []
                if Int(arryOfDigit[digit])! >= 1 && Int(arryOfDigit[digit])! <= 3 {
                    for i in 1...Int(arryOfDigit[digit])! {
                        temperaryArray.append(String(Character(UnicodeScalar(8559)!)))
                    }
                }else if Int(arryOfDigit[digit])! == 4 {
                    temperaryArray.append(String(Character(UnicodeScalar(8558)!)))
                    temperaryArray.append(String(Character(UnicodeScalar(8559)!)))
                }else if Int(arryOfDigit[digit])! == 5 {
                    temperaryArray.append(String(Character(UnicodeScalar(8559)!)))
                }
                let str = temperaryArray.joined().characters.reversed()
                resultArray.append(String(str))
                
            }
        }
        reversedResult = resultArray.joined()
        let result = String(reversedResult.characters.reversed())
        return result
    }
}
