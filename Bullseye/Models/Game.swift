//
//  Game.swift
//  Bullseye
//
//  Created by Isabelle Chang on 6/21/22.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0 // initial score is 0
    var round: Int = 1 // initial round is round 1
    
    func points(sliderInt: Int) -> Int {
        var pointsEarned: Int
        pointsEarned = sliderInt
        return pointsEarned
    }
    
    
}
