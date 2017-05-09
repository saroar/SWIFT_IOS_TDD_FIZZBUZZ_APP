//
//  ViewControllerUITests.swift
//  FizzBuzz
//
//  Created by Alif on 06/05/2017.
//  Copyright © 2017 Alif. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testTapNumberOfButtonIncrementsScore() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        let newScore = numberButton.label
        
        XCTAssertEqual(newScore, "1")
    }
    
    func test2TimesTapNumberOfButtonIncrementsScore() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "2")
    }
    
    func testTapFizzButtonIncrementsTo3() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "3")
    }
    
    func testTapBuzzButtonIncrementsTo5() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        let buzzButton = app.buttons["buzzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "5")
    }
    
    func playTo14() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        let buzzButton = app.buttons["buzzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        buzzButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
    }
    
    func testTapFizzBuzzButtonIncrementsTo15() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzbuzzButton = app.buttons["fizzBuzzButton"]
        
        playTo14()
        
        fizzbuzzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "15")
    }
    
    
}
