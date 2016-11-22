//
//  Test4.swift
//  iOS UTs
//
//  Created by Felix Carrard on 21/11/2016.
//  Copyright © 2016 Felix Carrard. All rights reserved.
//

import UIKit

class Test4: NSObject {
    // -------------------------- TEST 4 -------------------------------
    
    /**
     * @TODO:
     *
     * Write a function that computes the list of the first n Fibonacci
     * numbers. By definition, the first two numbers in the Fibonacci
     * sequence are 0 and 1, and each subsequent number is the sum of the
     * previous two.
     *
     * As an example, here are the first 10 Fibonnaci
     * numbers: [0, 1, 1, 2, 3, 5, 8, 13, 21, 34].
     */
    
    public static func test4(nb: Int) -> [Int] {
        guard nb > 0 else {
            return []
        }
        
        var list: [Int] = []
        list.append(0)
        if nb == 1 {
            return list
        }
        list.append(1)
        if nb == 2 {
            return list
        }
        
        for i in 2..<nb {
            let x = list[i-2]
            let y = list[i-1]
            list.append(x+y)
        }
        
        return list
    }
}
