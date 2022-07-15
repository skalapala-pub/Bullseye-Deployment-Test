//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Isabelle Chang on 6/20/22.
//

import XCTest
@testable import Bullseye_test_app

class BullseyeTests: XCTestCase {

    var testGame: Game! // may be empty or may havea value; regardless, treatit as if ther's a value there
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        testGame = Game()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        testGame = nil
    }

    /*func testExample() throws {
        XCTAssertEqual(testGame.points(sliderInt: 50), 50)
    }*/
    
    func testScorePositive() {
        let guess = testGame.target + 5
        let score = testGame.points(sliderInt: guess)
        XCTAssertEqual(score, 95)
    }
    
    func testScoreNegative() {
        let guess = testGame.target - 5
        let score = testGame.points(sliderInt: guess)
        XCTAssertEqual(score, 95)
    }

}
