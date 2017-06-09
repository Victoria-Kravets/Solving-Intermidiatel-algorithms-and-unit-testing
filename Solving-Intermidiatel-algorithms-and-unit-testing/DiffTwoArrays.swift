//
//  DiffTwoArrays.swift
//  Solving-Intermidiatel-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/9/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import Foundation
class DiffTwoArrays{
//    func diffArray(firstArray: Array<Int>, secondArray: Array<Int>) -> Array<Int>{
//        var newArrayFirst = firstArray
//        var newArraySecond = secondArray
//        var newArray3 = [Int]()
//        var newArray4 = [Int]()
//        var i = 0
//        var j = 0
//        
//        for elementInFirstArray in firstArray{
//            if !newArraySecond.isEmpty {
//                if elementInFirstArray == newArraySecond[i]{
//                    newArraySecond.remove(at: i)
//                }else{
//                    i += 1
//                }
//            }
//        }
//        for elementInSecondArray in secondArray{
//            if !newArrayFirst.isEmpty{
//                if elementInSecondArray == newArrayFirst[i]{
//                    newArrayFirst.remove(at: i)
//                }else{
//                    i += 1
//                }
//            }
//        }
//        return newArrayFirst + newArraySecond
//    }
//    func diffArrayString(firstArray: Array<String>, secondArray: Array<String>) -> Array<String>{
//        var newArrayFirst = firstArray
//        var newArraySecond = secondArray
//        var newArray3 = [String]()
//        var newArray4 = [String]()
//        var i = 0
//        var j = 0
//        var count1 = 0
//        var count2 = 0
//        
//        for elementInFirstArray in 1...firstArray.count  {
//            if (!newArraySecond.isEmpty){
//                if secondArray[i] == newArraySecond[j]{
//                    newArraySecond.remove(at: j)
//                    i += 1
//                }else{
//                    j += 1
//                }
//            }
//        }
//        for elementInSecondArray in 1...firstArray.count  {
//            if (!newArrayFirst.isEmpty){
//                if secondArray[count1] == newArrayFirst[count2]{
//                    newArrayFirst.remove(at: count2)
//                    count1 += 1
//                }else{
//                    count2 += 1
//                }
//            }
//        }
//        return newArrayFirst + newArraySecond
//    }
//    func diffArrayString(firstArray: Array<String>, secondArray: Array<String>) -> Array<String>{
//        var newArrayFirst = firstArray
//        var newArraySecond = secondArray
//        var newArray3 = [String]()
//        var newArray4 = [String]()
//        var i = 0
//        var j = 0
//        for elementInFirstArray in 0...firstArray.count - 1 {
//            for elementInSecondArray in 0...newArraySecond.count - 1 {
//                if elementInSecondArray >= newArraySecond.count{
//                    break
//                }
//                if newArrayFirst[elementInFirstArray] == newArraySecond[elementInSecondArray]{
//                    newArraySecond.remove(at: elementInSecondArray)
//                }
//            }
//            
//        }
//        var firstNewArrayFirst = firstArray
//        var secondNewArraySecond = secondArray
//        
//        for elementInSecondArray in 0...secondArray.count - 1 {
//            
//            for elementInFirstArray in 0...firstNewArrayFirst.count - 1 {
//                if elementInFirstArray >= firstNewArrayFirst.count{
//                    break
//                }
//                if secondNewArraySecond[elementInSecondArray] == firstNewArrayFirst[elementInFirstArray]{
//                    firstNewArrayFirst.remove(at: elementInFirstArray)
//                }
//            }
//            
//        }
//        
//        
//        
//        return firstNewArrayFirst + newArraySecond
//    }
    func diffArray<T>(firstArray: Array<T>, secondArray: Array<T>) -> Array<T>{
        var newArrayFirst = firstArray
        var newArraySecond = secondArray
        var firstNewArrayFirst = firstArray
        var secondNewArraySecond = secondArray
        
        if secondArray.isEmpty{
            newArraySecond = secondArray
        }else{
            if !firstArray.isEmpty{
                for elementInFirstArray in 0...firstArray.count - 1 {
                    for elementInSecondArray in 0...newArraySecond.count - 1 {
                        if elementInSecondArray >= newArraySecond.count{
                            break
                        }
                        if newArrayFirst[elementInFirstArray] is String{
                            if newArraySecond[elementInSecondArray] is String{
                                if (newArrayFirst[elementInFirstArray]as! String) == (newArraySecond[elementInSecondArray] as! String){
                                   newArraySecond.remove(at: elementInSecondArray)
                                    
                                }
                            }
                        }else {
                            if newArraySecond[elementInSecondArray] is Int{
                                if (newArrayFirst[elementInFirstArray]as! Int) == (newArraySecond[elementInSecondArray] as! Int){
                                    newArraySecond.remove(at: elementInSecondArray)
                                }
                            }
                        }
                    }
                } 
            }
        }
        
        if firstArray.isEmpty{
            firstNewArrayFirst = firstArray
        }else{
            for elementInSecondArray in 0...secondArray.count - 1 {
                for elementInFirstArray in 0...firstNewArrayFirst.count - 1 {
                    if elementInFirstArray >= firstNewArrayFirst.count{
                        break
                    }
                    if secondNewArraySecond[elementInSecondArray] is String{
                        if firstNewArrayFirst[elementInFirstArray] is String{
                            if (secondNewArraySecond[elementInSecondArray] as! String) == (firstNewArrayFirst[elementInFirstArray] as! String){
                                firstNewArrayFirst.remove(at: elementInFirstArray)
                            }
                        }
                    }else{
                        if firstNewArrayFirst[elementInFirstArray] is Int{
                            if (secondNewArraySecond[elementInSecondArray] as! Int) == (firstNewArrayFirst[elementInFirstArray] as! Int){
                                firstNewArrayFirst.remove(at: elementInFirstArray)
                            }
                        }
                    }
                }
            }
        }
      
            
        
        
        
        return firstNewArrayFirst + newArraySecond
    }
    
    
    


}

//protocol BeEqual {
//    static func ==(lhs: Self, rhs: Self) -> Bool
//}
//
//extension String: BeEqual {
//    static func ==(lhs: String, rhs: String) -> Bool {
//       return true
//    }
//}
//extension Double: BeEqual {
//    static func ==(lhs: Double, rhs: Double) -> Bool {
//        return true
//    }
//    
//}


