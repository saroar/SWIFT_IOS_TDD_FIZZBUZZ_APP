//
//  ViewControllerUnitTests.swift
//  FizzBuzz
//
//  Created by Alif on 06/05/2017.
//  Copyright © 2017 Alif. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerUnitTests: XCTestCase {
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow!.rootViewController = viewController
        
        let _ = viewController.view
    }
    
    func test() {
        XCTAssertTrue(true)
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testMove1IncrementsScore() {
        viewController.play(move: .number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }


    func testMove2IncrementsScore() {
        viewController.play(move: .number)
        viewController.play(move: .number)
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, 2)
    }
    
    func testFizzIncrementScore() {
        viewController.game?.score = 2
        viewController.play(move: .fizz)
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, 3)
    }
    
    func testBuzzIncrementScore() {
        viewController.game?.score = 4
        viewController.play(move: .buzz)
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, 5)
    }
    
    func testFizzBuzzIncrement() {
        viewController.game?.score = 14
        viewController.play(move: .fizzBuzz)
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, 15)
    }
    
    func testOnWrongMoveScoreNotIncremented() {
        viewController.play(move: .fizz)
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, 0)
    }
    

}
