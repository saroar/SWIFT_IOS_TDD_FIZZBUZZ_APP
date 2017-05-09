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
    
    func testOnPlayScoreIncrement() {
        _ = game.play(move: .number)

        XCTAssertTrue(game.score == 1)
    }

    func testOnPlayTwiceScoreIncremented() {
        game.score = 1
        _ = game.play(move: .number)
        XCTAssertTrue(game.score == 2)
    }
    
    func testIfFizzMoveIsRight() {
        game.score = 2
        let response = game.play(move: .fizz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    
    func testIfFizzMoveIsWrong() {
        game.score = 1
        let response = game.play(move: .fizz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfBuzzMoveRight() {
        game.score = 4
        let response = game.play(move: .buzz)
        let result = response.right
        
        XCTAssertEqual(result, true)
    }
    
    func testIfBuzzMoveWrong() {
        game.score = 1
        let response = game.play(move: .buzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfFizzBuzzMoveRight() {
        game.score = 14
        let response = game.play(move: .fizzBuzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfFizzBuzzMoveWrong() {
        game.score = 1
        let response = game.play(move: .fizzBuzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfNumberMoveRight() {
        game.score = 1
        let response = game.play(move: .number)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfNumberMoveWrong() {
        game.score =  2
        let response = game.play(move: .number)
        let result = response.right
        XCTAssertEqual(result, false)
        
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        _ = game.play(move: .fizz)
        XCTAssertEqual(game.score, 1)
    }
    
    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(move: .number)
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play(move: .number)
        XCTAssertNotNil(response.score)
    }
}
