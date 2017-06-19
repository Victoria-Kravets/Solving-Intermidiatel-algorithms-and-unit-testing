//
//  ArgumentsOptional.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/16/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*Create a function that sums two arguments together. If only one argument is provided, then return a function that expects one argument and returns the sum.
For example, addTogether(2, 3) should return 5, and addTogether(2) should return a function.
Calling this returned function with a single argument will then return the sum:
var sumTwoAnd = addTogether(2);
sumTwoAnd(3) returns 5.
 */
import Foundation
class ArgumentsOptional{
    func addTogether(firstArg: Any, secondArg: Any) -> Any{
      var result = 0
        if firstArg is Int && secondArg is Int{
            result = (firstArg as! Int) + (secondArg as! Int)
            return result
        }else if secondArg is (Int)->(Int) && firstArg is Int{
            var function: (_ num: Int)->(Int)
            function = secondArg as! (Int)->(Int)
            let sumTwoAnd = function(firstArg as! Int)
            return sumTwoAnd
        }else{
            return -1
        }
      
    }
    func addTogether(firstArg: Any) -> (_ n: Int)->(Int){
        if firstArg is Int{
            let digit = firstArg as! Int
           return {(_ n:  Int) -> (Int) in return (n + digit)}
        }
        return {_ in return -1}
    }
}
