//
//  Test1.swift
//  iOS UTs
//
//  Created by Felix Carrard on 21/11/2016.
//  Copyright © 2016 Felix Carrard. All rights reserved.
//

import UIKit

class Test1: NSObject {
    // -------------------------- TEST 1 -------------------------------
    
    /**
     * @TODO:
     * Write a function that compute the sum of the numbers in a given
     * list using a for-loop, foreach-loop, a while-loop, and recursion.
     */
    
    public static func test1(list: [Int]) -> [Int] {
        return [forLoop(list: list), forEachLoop(list: list), whileLoop(list: list), recursive(list: list)]
    }
    
    static func forLoop(list: [Int]) -> Int {
        var sum = 0
        for i in 0..<list.count {
            sum += list[i]
        }
        return sum
    }
    
    static func forEachLoop(list: [Int]) -> Int {
        var sum = 0
        for i in list {
            sum += i
        }
        return sum
    }
    
    static func whileLoop(list: [Int]) -> Int {
        var sum = 0
        var i = list.count - 1
        while i >= 0 {
            sum += list[i]
            i = i - 1
        }
        return sum
    }
    
    static func recursive(list: [Int]) -> Int {
        let sum = list.reduce(0, +)
        return sum
    }
    
}
