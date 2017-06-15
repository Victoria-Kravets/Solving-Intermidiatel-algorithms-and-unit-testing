//
//  ConvertHTMLEntities.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/15/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Convert the characters &, <, >, " (double quote), and ' (apostrophe), in a string to their corresponding HTML entities.
 */

import Foundation
class ConvertHTMLEntities{
    func convertHTML(originalStr: String) -> String{
        var result = ""
        let characterEntities: [String: Character] = [
            "&quot;"     : "/",
            "&amp;"      : "&",
            "&apos;"     : "'",
            "&lt;"       : "<",
            "&gt;"       : ">",
        ]
        for character in originalStr.characters {
            if character == "/" || character == "&" || character == "'" || character == "<" || character == ">" {
                for entity in characterEntities{
                    if character == entity.value {
                        result.append(entity.key)
                    }
                }
            }else{
                result.append(character)
            }
        }
        print(result)
        return result
    }
}
