//
//  Test2UT.swift
//  iOS UTs
//
//  Created by Felix Carrard on 21/11/2016.
//  Copyright © 2016 Felix Carrard. All rights reserved.
//

import XCTest
@testable import iOS_UTs

class Test2UT: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testEmpty() {
        let test = Test2.test2(list1: [], list2: [])
        XCTAssert(test.count == 0)
    }
    
    func testFirstEmpty() {
        let test = Test2.test2(list1: [], list2: [1,2,3])
        
        XCTAssert(test.count == 3)
    }

    func testSecondEmpty() {
        let test = Test2.test2(list1: [1,2,3], list2: [])
        
        XCTAssert(test.count == 3)
    }
    
    func testEqualSize() {
        let test = Test2.test2(list1: [1,2,3], list2: ["a", "b", "c"])
        
        XCTAssert(test.count == 6)
    }

    func testFirstLonger() {
        let test = Test2.test2(list1: [1,2,3,4], list2: ["a", "b", "c"])
        
        XCTAssert(test.count == 7)
    }
    
    func testSecondLonger() {
        let test = Test2.test2(list1: [1,2,3], list2: ["a", "b", "c", "d"])
        
        XCTAssert(test.count == 7)
    }

}
