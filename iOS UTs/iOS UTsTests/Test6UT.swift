//
//  Test6UT.swift
//  iOS UTs
//
//  Created by Felix Carrard on 21/11/2016.
//  Copyright © 2016 Felix Carrard. All rights reserved.
//

import XCTest
@testable import iOS_UTs

class Test6UT: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        var expected = ["1+2+3-4+5+6+78+9",
                        "1+2+34-5+67-8+9",
                        "1+23-4+5+6+78-9",
                        "1+23-4+56+7+8+9",
                        "12+3+4+5-6-7+89",
                        "12+3-4+5+67+8+9",
                        "12-3-4+5-6+7+89",
                        "123+4-5+67-89",
                        "123+45-67+8-9",
                        "123-4-5-6-7+8-9",
                        "123-45-67+89",
                        "1+2+3-4+5+6+78+9",
                        "1+2+34-5+67-8+9",
                        "1+23-4+5+6+78-9",
                        "1+23-4+56+7+8+9",
                        "12+3+4+5-6-7+89",
                        "12+3-4+5+67+8+9",
                        "12-3-4+5-6+7+89",
                        "123+4-5+67-89",
                        "123+45-67+8-9",
                        "123-4-5-6-7+8-9",
                        "123-45-67+89",
                        "1+2+3-4+5+6+78+9",
                        "1+2+34-5+67-8+9",
                        "1+23-4+5+6+78-9",
                        "1+23-4+56+7+8+9",
                        "12+3+4+5-6-7+89",
                        "12+3-4+5+67+8+9",
                        "12-3-4+5-6+7+89",
                        "123+4-5+67-89",
                        "123+45-67+8-9",
                        "123-4-5-6-7+8-9",
                        "123-45-67+89"]
        
        var actual = Test6.test6()
        
        expected = expected.sorted()
        actual = actual.sorted()
        
        for i in 0..<expected.count {
            XCTAssert(expected[i] == actual[i])
        }
    }
}
