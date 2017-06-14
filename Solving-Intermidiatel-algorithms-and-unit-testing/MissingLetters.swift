//
//  MissingLetters.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/14/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Find the missing letter in the passed letter range and return it.
 */

import Foundation
class MissingLetters{
    func fearNotLetter(sequence: String) -> String{
        var arrayOfLetterAlphabet = ["a", "b", "c", "d","e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
        var arrayOfLetterInSequence = [String]()
        var arrayOfLetterInAlphabet = [String]()
        var str = ""
        var count = 0
        var element = 0
        for letter in arrayOfLetterAlphabet {
            if count <= sequence.characters.count{
                arrayOfLetterInAlphabet.append(letter)
            }
            count += 1
        }
        for letter in sequence.characters {
            if sequence.characters.first != "a" {
                return ""
            }
            arrayOfLetterInSequence.append(String(letter))
        }
        
        for missingLetter in arrayOfLetterInSequence  {
            for letter in arrayOfLetterInAlphabet{
                if missingLetter == letter{
                   arrayOfLetterInAlphabet.remove(at: arrayOfLetterInAlphabet.index(of: letter)!)
                    
                }
            }
        }
        str = arrayOfLetterInAlphabet.joined()
        return str
    }
}
