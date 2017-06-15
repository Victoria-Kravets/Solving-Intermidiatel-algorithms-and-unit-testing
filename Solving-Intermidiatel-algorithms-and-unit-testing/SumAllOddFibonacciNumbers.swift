//
//  SumAllOddFibonacciNumbers.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/14/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*Given a positive integer num, return the sum of all odd Fibonacci numbers that are less than or equal to num.
 The first two numbers in the Fibonacci sequence are 1 and 1. Every additional number in the sequence is the sum of the two previous numbers. The first six numbers of the Fibonacci sequence are 1, 1, 2, 3, 5 and 8.
 For example, sumFibs(10) should return 10 because all odd Fibonacci numbers less than 10 are 1, 1, 3, and 5.*/

import Foundation
class SumAllOddFibonacciNumbers{
    func sumFibs(digit: Int) -> Int{
        var result = 0
        var count = 0
        var numberFibonacci = 0
        var fibonacciNumbers = [1, 1]
        while numberFibonacci < 5000000 {
            numberFibonacci = fibonacciNumbers[count] + fibonacciNumbers[count+1]
            fibonacciNumbers.append(numberFibonacci)
            count += 1
        }
        for element in fibonacciNumbers {
            if element <= digit {
                if element % 2 != 0{
                  result += element
                }
            }
        }
        return result
    }
}
