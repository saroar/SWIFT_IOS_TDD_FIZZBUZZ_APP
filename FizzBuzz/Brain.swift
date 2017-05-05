//
//  Brain.swift
//  FizzBuzz
//
//  Created by Alif on 04/05/2017.
//  Copyright © 2017 Alif. All rights reserved.
//

import Foundation

class Brain {
    func isDividedByThree(number: Int) -> Bool {
        return isDivisibleBy(divisor: 3, number: number)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisibleBy(divisor: 5, number: number)
    }
    
    func isDivisibleByFiftheen(number: Int) -> Bool {
        return isDivisibleBy(divisor: 15, number: number)
    }
    
    func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }
    
    func check(number: Int) -> String {
        if isDivisibleByFiftheen(number: number)  { return "fizzbuzz"  }
        if isDividedByThree(number: number)      { return "fizz"      }
        if isDivisibleByFive(number: number)      { return "buzz"      }
        else                                      { return "\(number)" }
    }
}
