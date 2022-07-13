//
//  Game.swift
//  Bullseye
//
//  Created by Isabelle Chang on 6/21/22.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0 // initial score is 0
    var round = 1 // initial round is round 1
    
    /*func points(sliderInt: Int) -> Int {
        let difference = abs(sliderInt - target)
        let awardedScore = 100 - difference
        return awardedScore
    }*/
    
    mutating func points(sliderInt: Int) -> Int {
        100 - abs(target-sliderInt)
    }
    
    mutating func reroll() -> Void {
        let old_val = target
        
        while target == old_val {
            target = Int.random(in: 1...100)
        }
    }
    
//    mutating func updateScore(points: Int) -> Void {
//        score += points
//    }
    
    
}
