//
//  Test6.swift
//  iOS UTs
//
//  Created by Felix Carrard on 21/11/2016.
//  Copyright © 2016 Felix Carrard. All rights reserved.
//

import UIKit

class Test6: NSObject {
    // -------------------------- TEST 6 -------------------------------
    
    /**
     * @TODO:
     *
     * Write a program that outputs all possibilities to put + or - or
     * nothing between the numbers 1, 2, ..., 9 (in this order) such that
     * the result is always 100.
     *
     * For example: 1 + 2 + 34 – 5 + 67 – 8 + 9 = 100.
     * Formatted as "1+2+34-5+67-8+9".
     */
    
    var result: [String] = []
    
    public static func test6() -> [String] {
        let t = Test6()
        
        t.compute()
        print(t.result)
        return t.result
    }
    
    func compute(index: Int = 1, tokens: [String] = ["0"]) {
        guard index <= 9 else {
            self.handle(tokens: tokens)
            return
        }
        
        // sum
        self.compute(index: index + 1, tokens: tokens + ["+", String(index)])
    
        // diff
        self.compute(index: index + 1, tokens: tokens + ["-", String(index)])
        
        // nothing
        let lastPos = tokens.count - 1
        let i = Int(tokens[lastPos])! * 10 + index
        var tok = tokens
        tok[lastPos] = String(i)
        self.compute(index: index + 1, tokens: tok)
    }
    
    func handle(tokens: [String]) {
        let length = tokens.count
        
        var string = ""
        var result = 0
        var i = 0
        
        while i < length {
            let token = tokens[i]
            if token == "+" {
                let operand = Int(tokens[i+1])!
                result += operand
                string = "\(string)+\(operand)"
                i += 1
            } else if token == "-" {
                let operand = Int(tokens[i+1])!
                result -= operand
                string = "\(string)-\(operand)"
                i += 1
            } else if token == "0" {
                i += 1
            } else {
                result = Int(token)!
                string = token
            }
            i = i+1
        }
        
        if result == 100 {
            self.result.append(string)
        }
    }
}
