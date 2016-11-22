//
//  Test3.swift
//  iOS UTs
//
//  Created by Felix Carrard on 21/11/2016.
//  Copyright © 2016 Felix Carrard. All rights reserved.
//

import UIKit

class Test3: NSObject {
    // -------------------------- TEST 3 -------------------------------
    
    /**
     * @TODO:
     *
     * Let's A be a matrix
     * A = [ 2  3  2  1 ]
     *     [ 5  2  3  1 ]
     *     [ 1  2  2  1 ]
     * width = 4
     * heigh = 3
     *
     * You can move RIGTH or DOWN.
     * You cannot move UP or LEFT.
     *
     * Write a function that calculate the highest path sum in a matrix
     * following this rule (move only RIGTH or DOWN)
     *
     * In this example :
     *     [*2  3  2  1 ]
     *     [*5 *2 *3  1 ]
     *     [ 1  2 *2 *1 ] => 2 + 5 + 2 + 3 + 2 + 1 => 15
     */
    
    public static func test3(matrix: [[Int]], height: Int, width: Int) -> Int {
        return calculate(matrix: matrix, height: height, width: width, x: 0, y: 0)
    }
    
    static func calculate(matrix: [[Int]], height: Int, width: Int, x: Int, y: Int) -> Int {
        if x >= width || y >= height {
            return 0
        } else {
            return matrix[y][x] + max(self.calculate(matrix: matrix, height: height, width: width, x: x + 1, y: y),
                                      self.calculate(matrix: matrix, height: height, width: width, x: x, y: y + 1));
        }
    }
}
