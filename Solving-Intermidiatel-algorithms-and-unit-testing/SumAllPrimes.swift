//
//  SumAllPrimes.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/15/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Sum all the prime numbers up to and including the provided number.
 A prime number is defined as a number greater than one and having only two divisors, one and itself. For example, 2 is a prime number because it's only divisible by one and two.
 The provided number may not be a prime.
 */

import Foundation
class SumAllPrimes{
    func sumPrimes(digit: Int) -> Int{
        var sum = 0
        var arrayOfDigitsInDigit = [Int]()
        var arrayOf = [Int]()
        var state = true
        for digit in 2...digit {
            arrayOfDigitsInDigit.append(digit)
        }
        for digit in arrayOfDigitsInDigit {
            if arrayOf.isEmpty {
                arrayOf.append(digit)
                sum += digit
            }else{
                for element in arrayOf{
                    if digit % element != 0{
                        arrayOf.append(digit)
                        state = true
                       
                    }else{
                        state = false
                        break
                    }
                }
                if state == true{
                   sum += digit
                }
            }
        }
        return sum
    }
}
