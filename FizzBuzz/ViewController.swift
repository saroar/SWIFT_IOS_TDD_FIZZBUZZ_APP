//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Alif on 04/05/2017.
//  Copyright © 2017 Alif. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var gameScore: Int? {
        didSet {
            guard let unwrappedScore = gameScore else {
                print("Game Score is nil!")
                return
            }
            
            numberButton.setTitle("\(unwrappedScore)", for: .normal)
        }
    }
    
    var game: Game?
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        
        guard let checkedGame = game else {
            print("Game is nil")
            return
        }
        
        gameScore = checkedGame.score
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func play(move: Move) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }

    @IBAction func buttonTapped(sender: UIButton) {
        switch sender {
        case numberButton:
            play(move: .number)
        case fizzButton:
            play(move: .fizz)
        case buzzButton:
            play(move: .buzz)
        case fizzBuzzButton:
            play(move: .fizzBuzz)
        default:
            print("Invalid selection")
        }
    }
}

