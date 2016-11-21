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
    var sum = 0
    for i in 0..<list.count {
        sum += list[i]
    }
    return sum
}

func forEachLoop(list: [Int]) -> Int {
    var sum = 0
    for i in list {
        sum += i
    }
    return sum
}

func whileLoop(list: [Int]) -> Int {
    var sum = 0
    var i = list.count - 1
    while i >= 0 {
        sum += list[i]
        i = i - 1
    }
    return sum
}

func recursive(list: [Int]) -> Int {
    let sum = list.reduce(0, +)
    return sum
}

test1(list: [6,3,4,5]) // -> should return [10,10,10,10]



// -------------------------- TEST 2 -------------------------------

/**
 * @TODO:
 * Write a function that combines two lists by alternatingly taking
 * elements. For exemple: given two lists [A, B, C] and [1, 2, 3], the
 * results sould be [A, 1, B, 2, C, 3]
 */

func test2(list1: [Any], list2: [Any]) -> [Any] {
    var final: [Any] = []

//    guard list1.count == list2.count else {
//        return final
//    }
    
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

test2(list1: [], list2: [])



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
    guard nb >= 0 else {
        return []
    }

    if nb == 0 {
        return [0]
    } else if nb == 1 {
        return [0, 1]
    } else {
        var list = [Int]()
        var auxList = test4(nb: nb - 1)
        list = auxList + [(auxList[auxList.count - 1] + auxList[auxList.count - 2])]
        return list
    }
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
    /*var myList = list
    
    func getNumberOfDigits(number: Int) -> Int {
        return String(number).characters.count
    }
    
    let n = getNumberOfDigits(number: 678)
    pow(10, n - 1)

    
    myList.sorted {
        
        let a = getNumberOfDigits(number: $0)
        let b = getNumberOfDigits(number: $1)
        if a > b {
            return true
        } else if a < b {
            return false
        } else {
            return ($0 > $1)
        }
    }
    
    */
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









