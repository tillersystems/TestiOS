//
//  Test4UT.swift
//  iOS UTs
//
//  Created by Felix Carrard on 21/11/2016.
//  Copyright © 2016 Felix Carrard. All rights reserved.
//

import XCTest
@testable import iOS_UTs

class Test4UT: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNegative() {
        let test = Test4.test4(nb: -1)
        XCTAssert(test == [])
    }

    func testZero() {
        let test = Test4.test4(nb: 0)
        XCTAssert(test == [])
    }

    func testOne() {
        let test = Test4.test4(nb: 1)
        XCTAssert(test == [0])
    }

    func testFive() {
        let test = Test4.test4(nb: 5)
        XCTAssert(test == [0,1,1,2,3])
    }

    func testHeight() {
        let test = Test4.test4(nb: 8)
        XCTAssert(test == [0,1,1,2,3,5,8,13])
    }
    
    func testTen() {
        let test = Test4.test4(nb: 10)
        XCTAssert(test == [0, 1, 1, 2, 3, 5, 8, 13, 21, 34])
    }

}
