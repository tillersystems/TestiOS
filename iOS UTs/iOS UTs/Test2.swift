//
//  Test2.swift
//  iOS UTs
//
//  Created by Felix Carrard on 21/11/2016.
//  Copyright © 2016 Felix Carrard. All rights reserved.
//

import UIKit

class Test2: NSObject {
    // -------------------------- TEST 2 -------------------------------
    
    /**
     * @TODO:
     * Write a function that combines two lists by alternatingly taking
     * elements. For exemple: given two lists [A, B, C] and [1, 2, 3], the
     * results sould be [A, 1, B, 2, C, 3]
     */
    
    public static func test2(list1: [Any], list2: [Any]) -> [Any] {
        var final: [Any] = []
        
        let max = list1.count > list2.count ? list1.count : list2.count
        
        for i in 0..<max {
            if list1.count > i {
                final.append(list1[i])
            }
            if list2.count > i {
                final.append(list2[i])
            }

        }

        return final
    }
}
