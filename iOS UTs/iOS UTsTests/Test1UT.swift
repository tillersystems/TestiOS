//
//  iOS_UTsTests.swift
//  iOS UTsTests
//
//  Created by Felix Carrard on 21/11/2016.
//  Copyright © 2016 Felix Carrard. All rights reserved.
//

import XCTest
@testable import iOS_UTs

class Test1UT: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testEmpty() {
        let test = Test1.test1(list: [])
        XCTAssert(test == [])
    }
    
    func testSingle() {
        let test = Test1.test1(list: [2])
        XCTAssert(test == [2,2,2,2])
    }

    func testBasic() {
        let test = Test1.test1(list: [2,3,4])
        XCTAssert(test == [9,9,9,9])
    }
    
    func testNegative() {
        let test = Test1.test1(list: [2,-12,3])
        XCTAssert(test == [-7,-7,-7,-7])
    }
}
