//
//  SearchAndReplace.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/12/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Perform a search and replace on the sentence using the arguments provided and return the new sentence.
 First argument is the sentence to perform the search and replace on.
 Second argument is the word that you will be replacing (before).
 Third argument is what you will be replacing the second argument with (after).
 NOTE: Preserve the case of the original word when you are replacing it. For example if you mean to replace the word "Book" with the word "dog", it should be replaced as "Dog"
 */

import Foundation
class SearchAndReplace{
    func myReplace(originalStr: String, wordInStr: String, newWord: String) -> String{
        var arrayOfOriginalStr = [String]()
        var arrayOfChar = [String]()
        var resultArray = [String]()
        var resultStr = ""
        var word = ""
        for char in originalStr.characters {
            if char == " " {
                arrayOfOriginalStr.append(word)
                arrayOfOriginalStr.append(String(char))
                arrayOfChar = []
            }
            else{
                arrayOfChar.append(String(char))
                word = arrayOfChar.joined()
            }
        }
        arrayOfOriginalStr.append(word)
        let wordInLowerCase = wordInStr.lowercased()
        if wordInLowerCase != wordInStr  {
            for word in arrayOfOriginalStr{
                if word == wordInStr{
                    var arrayOfCharInNewWord = [String]()
                    for char in newWord.characters {
                        if newWord.characters.first == char{
                            let upperCaseChar = String(char).uppercased()
                            arrayOfCharInNewWord.append(upperCaseChar)
                        }else{
                            arrayOfCharInNewWord.append(String(char))
                        }
                    }
                    let newWordStr = arrayOfCharInNewWord.joined()
                    resultArray.append(newWordStr)
                }else{
                    resultArray.append(word)
                }
            }
        }else{
            for word in arrayOfOriginalStr{
                if word == wordInStr{
                    var arrayOfCharInNewWord = [String]()
                    for char in newWord.characters {
                        arrayOfCharInNewWord.append(String(char))
                    }
                    let newWordStr = arrayOfCharInNewWord.joined()
                    resultArray.append(newWordStr)
                }else{
                    resultArray.append(word)
                }
            }
        }
        
        resultStr = resultArray.joined()
        return resultStr
    }
}
