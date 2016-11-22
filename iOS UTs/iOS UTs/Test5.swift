//
//  Test5.swift
//  iOS UTs
//
//  Created by Felix Carrard on 21/11/2016.
//  Copyright © 2016 Felix Carrard. All rights reserved.
//

import UIKit

class Test5: NSObject {
    // -------------------------- TEST 5 -------------------------------
    
    /**
     * @TODO:
     *
     * Write a function that given a list of non negative integers,
     * arranges them such that they form the largest possible number.
     *
     * For example, given [50, 2, 1, 9] the largest formed number is 95021.
     */
    
    public static func test5(list: [Int]) -> Int {
        guard list.count > 0 else {
            return 0
        }
        
        var stringList: [String] = []
        for i in list {
            stringList.append(String(i))
        }
        stringList = stringList.sorted(by: { (value1, value2) -> Bool in
            return value1 > value2
        })

        var str: String = ""
        for i in stringList {
            str = "\(str)\(i)"
        }
        
        return Int(str)!
    }
}
