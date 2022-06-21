//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Isabelle Chang on 6/20/22.
//

import XCTest
@testable import Bullseye

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

    func testExample() throws {
        XCTAssertEqual(testGame.points(sliderInt: 50), 50)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
