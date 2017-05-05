//
//  GameTests.swift
//  FizzBuzz
//
//  Created by Alif on 05/05/2017.
//  Copyright © 2017 Alif. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {
    
    let game = Game()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testPlayScoreIncrement() {
        _ = game.play(move: "1")
        XCTAssertTrue(game.score == 1)
    }
    
    func testOnPlayTwiceScoreIncremented() {
        game.score = 1
        _ = game.play(move: "2")
        XCTAssertTrue(game.score == 2)
    }
    
    func testIfFizzMoveIsRight() {
        game.score = 2
        let result = game.play(move: "fizz")
        XCTAssertEqual(result, true)
    }
    
    func testIfFizzMoveIsWrong() {
        game.score = 1
        let result = game.play(move: "fizz")
        XCTAssertEqual(result, false)
    }
    
    func testIfBuzzMoveRight() {
        game.score = 4
        let result = game.play(move: "buzz")
        
        XCTAssertEqual(result, true)
    }
    
    func testIfBuzzMoveWrong() {
        game.score = 1
        let result = game.play(move: "buzz")
        XCTAssertEqual(result, false)
    }
    
    func testIfFizzBuzzMoveRight() {
        game.score = 14
        let result = game.play(move: "fizzbuzz")
        XCTAssertEqual(result, true)
    }
    
    func testIfFizzBuzzMoveWrong() {
        game.score = 1
        let result = game.play(move: "fizzbuzz")
        XCTAssertEqual(result, false)
    }
    
    func testIfNumberMoveRight() {
        game.score = 1
        let result = game.play(move: "2")
        XCTAssertEqual(result, true)
    }
    
    func testIfNumberMoveWrong() {
        game.score =  2
        let result = game.play(move: "3")
        XCTAssertEqual(result, false)
        
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        _ = game.play(move: "fizz")
        XCTAssertEqual(game.score, 1)
    }
}
