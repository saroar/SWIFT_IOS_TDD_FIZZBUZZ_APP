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
    }
    
    override func tearDown() {
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
        let result = brain.check(move: 3)
        XCTAssertEqual(result, Move.fizz)
    }
    
    func testSayBuzz() {
        let result = brain.check(move: 5)
        XCTAssertEqual(result, Move.buzz)
    }
    
    func testSayFizzBuzz() {
        let result = brain.check(move: 15)
        XCTAssertEqual(result, Move.fizzBuzz)
    }
    
    func testSayNumber() {
        let result = brain.check(move: 1)
        XCTAssertEqual(result, Move.number)
    }
    
}
