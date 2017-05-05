//
//  Game.swift
//  FizzBuzz
//
//  Created by Alif on 05/05/2017.
//  Copyright © 2017 Alif. All rights reserved.
//

import Foundation

class Game {
    var score: Int = 0
    let brain: Brain
    
    init() {
        score = 0
        brain = Brain()
    }
    
    func play(move: String) -> Bool {
        let result = brain.check(number: score + 1)
        
        if result == move {
            score += 1
            return true
        } else {
            return false
        }
    }
}
