//
//  BooWho.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/14/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Check if a value is classified as a boolean primitive. Return true or false.
 Boolean primitives are true and false.
 */

import Foundation
class BooWho{
    func booWhoFunc<T>(object: T) -> Bool{
        if object is Bool {
            return true
        }else{
            return false
        }
    }
}
