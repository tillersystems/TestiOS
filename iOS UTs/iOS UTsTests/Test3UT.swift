//
//  Test3UT.swift
//  iOS UTs
//
//  Created by Felix Carrard on 21/11/2016.
//  Copyright © 2016 Felix Carrard. All rights reserved.
//

import XCTest
@testable import iOS_UTs

class Test3UT: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func emptyMatrix() {
        let test = Test3.test3(matrix: [], height: 0, width: 0)
        XCTAssert(test == 0)
    }

    func emptySingleElement() {
        let test = Test3.test3(matrix: [2], height: 1, width: 1)
        XCTAssert(test == 2)
    }
    
    func emptyEasyMatrix() {
        let test = Test3.test3(matrix: [2,3,2,1,
                                        5,2,3,1,
                                        1,2,2,1], height: 4, width: 3)
        XCTAssert(test == 15)
    }

    func emptyHardMatrix() {
        let test = Test3.test3(matrix: [1,4,16,16,32,
                                        5,6,7,8,11,
                                        8,21,2,2,4,
                                        42,4,8,7,3], height: 5, width: 4)
        XCTAssert(test == 87)
    }
}
