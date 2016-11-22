//
//  Test5UT.swift
//  iOS UTs
//
//  Created by Felix Carrard on 21/11/2016.
//  Copyright © 2016 Felix Carrard. All rights reserved.
//

import XCTest
@testable import iOS_UTs

class Test5UT: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNull() {
        let test = Test5.test5(list: [])
        XCTAssert(test == 0)
    }
    
    func testSingle() {
        let test = Test5.test5(list: [1])
        XCTAssert(test == 1)
    }
    
    func testDouble() {
        let test = Test5.test5(list: [2,1])
        XCTAssert(test == 21)
    }

    func testComplex() {
        let test = Test5.test5(list: [50,2,1,9])
        XCTAssert(test == 95021)
    }
    
    func testHard() {
        let test = Test5.test5(list: [502, 503, 8, 9])
        XCTAssert(test == 98503502)
    }
}
