//
//  BullseyeUITests.swift
//  BullseyeUITests
//
//  Created by Isabelle Chang on 6/20/22.
//

import XCTest

class BullseyeUITests: XCTestCase {
    
    var app: XCUIApplication!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        try super.setUpWithError()
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    func testElementsExist() throws {

        let targetLabel = app.staticTexts["targetLabel"]
        let targetSlider = app.sliders["targetSlider"]
        let hitMeButton = app.buttons["HIT ME"]
        
        
        XCTAssertTrue(targetLabel.exists)
        XCTAssertFalse(!targetLabel.exists)
        
        XCTAssertTrue(targetSlider.exists)
        XCTAssertFalse(!targetSlider.exists)
        
        XCTAssertTrue(hitMeButton.exists)
        XCTAssertFalse(!hitMeButton.exists)
        
        hitMeButton.tap()
        sleep(1)
        
        let resultAlert = app.alerts["Results"]
        let resultButton = app.alerts["Results"].scrollViews.otherElements.buttons["Awesome!"]
        let resultMessage = resultAlert.scrollViews.otherElements.staticTexts.element(boundBy: 1)
        
        XCTAssertTrue(resultAlert.exists)
        XCTAssertFalse(!resultAlert.exists)
        
        XCTAssertTrue(resultButton.exists)
        XCTAssertFalse(!resultButton.exists)
        
        XCTAssertTrue(resultMessage.exists)
        XCTAssertFalse(!resultMessage.exists)
        
        print(resultMessage.label)

    }

    func testInputValue() {
        let targetLabel = app.staticTexts["targetLabel"]
        let targetSlider = app.sliders["targetSlider"]
        let hitMeButton = app.buttons["HIT ME"]


        let targetVal = CGFloat((targetLabel.label as NSString).doubleValue)
        print(targetVal)
        print(targetVal/100)
        targetSlider.adjust(toNormalizedSliderPosition: targetVal/100)
        hitMeButton.tap()
        
        //let resultAlert = app.alerts["Results"]
        let resultMessage = app.alerts["Results"].scrollViews.otherElements.staticTexts.element(boundBy: 1)
        //let resultButton = app.alerts["Results"].scrollViews.otherElements.buttons["Awesome!"]
        
        let components = resultMessage.label.components(separatedBy: " ")
        print(resultMessage.label)
        print(components[components.count - 2])
        
        //XCTAssertTrue(false)
        // comment
    }

//    func testLaunchPerformance() throws {
//        if #available(macOS 10.15, iOS 15.0, tvOS 13.0, watchOS 7.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTApplicationLaunchMetric()]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
}
