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
    let brain = Brain()
    
    func testDividedByThree() {

        let result = brain.isDividedByThree(number: 3)
        
        XCTAssertEqual(result, true)
    }
    
    func testIsDivisibleByFive() {

        let result = brain.isDivisibleByFive(number: 5)
        XCTAssertEqual(result, true)
    }
    
    func testIsDivisibleByFiftheen() {
        
        let result = brain.isDivisibleByFiftheen(number: 15)
        XCTAssertEqual(result, true)
    }
    
    func testSayFizz() {
        let result = brain.check(number: 3)
        XCTAssertEqual(result, "fizz")
    }
    
    func testSayBuzz() {
        let result = brain.check(number: 5)
        XCTAssertEqual(result, "buzz")
    }
    
    func testSayFizzBuzz() {
        let result = brain.check(number: 15)
        XCTAssertEqual(result, "fizzbuzz")
    }
    
    func testSayNumber() {
        let result = brain.check(number: 1)
        XCTAssertEqual(result, "1")
    }
    
}
