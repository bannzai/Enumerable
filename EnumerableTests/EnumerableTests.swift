//
//  EnumerableTests.swift
//  EnumerableTests
//
//  Created by Hirose.Yudai on 2017/08/28.
//  Copyright © 2017年 Hirose.Yudai. All rights reserved.
//

import XCTest

@testable import Enumerable
fileprivate enum FromZero: Int, Enumerable {
    case zero = 0
    case one
    case two
    case three
}

fileprivate enum FromOne: Int {
    case one = 1
    case two
    case three
}

extension FromOne: Enumerable {
    public static var startIndex: Int {
        return 1
    }
}

class EnumerableTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testFromZeroElements() {
        XCTAssertEqual(FromZero.elements.first!.rawValue, 0)
        XCTAssertEqual(FromZero.elements.last!.rawValue, 3)
        XCTAssertEqual(FromZero.elements.count, 4)
        XCTAssertEqual(FromZero.count, FromZero.elements.count)
    }
    
    func testFromOneElements() {
        XCTAssertEqual(FromOne.elements.first!.rawValue, 1)
        XCTAssertEqual(FromOne.elements.last!.rawValue, 3)
        XCTAssertEqual(FromOne.elements.count, 3)
        XCTAssertEqual(FromOne.count, FromOne.elements.count)
    }
    
}
