//
//  PigLatin.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/13/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Translate the provided string to pig latin.
 Pig Latin takes the first consonant (or consonant cluster) of an English word, moves it to the end of the word and suffixes an "ay".
 If a word begins with a vowel you just add "way" to the end.
 Input strings are guaranteed to be English words in all lowercase.
 */

import Foundation
class PigLatin{
    func translatePigLatin(originStr: String) -> String{
        var resultArray = [String]()
        var i = 0
        var firstConsonatChar = ""
        var resultStr = ""
        let firstInStr =  originStr.characters.first
        print(firstInStr)
        for char in originStr.characters {
            switch firstInStr as! Character {
            case Optional("a")!, Optional("e")!, Optional("u")!, Optional("i")!, Optional("o")! :
                resultArray.append(String(char))
                if  i == originStr.characters.count - 1{
                   resultArray.append("way")
                    resultStr = resultArray.joined()
                }
                i += 1
            default:
                if i == 0{
                  firstConsonatChar = String(char)
                }else{
                    resultArray.append(String(char))
                    if i == originStr.characters.count - 1{
                        resultArray.append(String(firstConsonatChar))
                        resultArray.append("ay")
                        resultStr = resultArray.joined()
                    }
                }
                i += 1
            }
        }
        return resultStr
    }
}
