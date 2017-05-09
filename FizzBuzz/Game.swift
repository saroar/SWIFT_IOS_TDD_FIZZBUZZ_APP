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
    
    func play(move: Move) -> (right: Bool, score: Int) {
        let result = brain.check(move: score + 1)
        
        if result == move {
            score += 1
            return (true, score)
        } else {
            return (false, score)
        }
    }
}
