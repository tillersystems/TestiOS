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
    
    public static func test6() -> [[String]] {
        return [["1", "+", "2", "+", "34", "-", "5", "+", "67", "-", "8", "+", "9"]]
    }
}
