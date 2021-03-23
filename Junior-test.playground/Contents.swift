//: Playground - noun: a place where people can play

import UIKit


// -------------------------- TEST 1 -------------------------------

/**
 * @TODO:
 * Write a function that compute the sum of the numbers in a given
 * list using a for-loop, foreach-loop, a while-loop, and recursion.
 */

func test1(list: [Int]) -> [Int] {
    return [forLoop(list: list), forEachLoop(list: list), whileLoop(list: list), recursive(list: list)]
}

func forLoop(list: [Int]) -> Int {
    return -1
}

func forEachLoop(list: [Int]) -> Int {
    return -1
}

func whileLoop(list: [Int]) -> Int {
    return -1
}

func recursive(list: [Int]) -> Int {
    return -1
}

test1(list: [1,2,3,4]) // -> should return [10,10,10,10]



// -------------------------- TEST 2 -------------------------------

/**
 * @TODO:
 * Write a function that combines two lists by alternatingly taking
 * elements. For exemple: given two lists [A, B, C] and [1, 2, 3], the
 * results sould be [A, 1, B, 2, C, 3]
 */

func test2(list1: [Any], list2: [Any]) -> [Any] {
    let final: [Any] = []
    
    return final
}

test2(list1: [1,2,3], list2: ["a", "b", "c"])



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


func test3(matrix: [Int], height: Int, width: Int) -> Int {
    return -1
}

test3(matrix: [2,3,2,1,
               5,2,3,1,
               1,2,2, 1], height: 3, width: 4) // Should return the max number of point you can have, here it would be 15



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

func test4(nb: Int) -> [Int] {
    return [-1]
}

test4(nb: 10) // should return [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]



// -------------------------- TEST 5 -------------------------------

/**
 * @TODO:
 *
 * Write a function that given a list of non negative integers,
 * arranges them such that they form the largest possible number.
 *
 * For example, given [50, 2, 1, 9] the largest formed number is 95021.
 */

func test5(list: [Int]) -> Int {
    return 0
}

test5(list: [50, 2, 1, 9]) // should return 95021



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

func test6() -> [[String]] {
    return [["1", "+", "2", "+", "34", "-", "5", "+", "67", "-", "8", "+", "9"]]
}

test6()









