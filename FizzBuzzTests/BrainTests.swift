//
//  BrainTests.swift
//  FizzBuzz
//
//  Created by Alif on 04/05/2017.
//  Copyright © 2017 Alif. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class BrainTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDividedByThree() {
        let brain = Brain()
        let result = brain.isDividedByThree(number: 3)
        
        XCTAssertEqual(result, true)
    }
    
}
