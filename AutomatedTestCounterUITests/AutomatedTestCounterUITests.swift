//
//  AutomatedTestCounterUITests.swift
//  AutomatedTestCounterUITests
//
//  Created by Nikhil Tanappagol on 8/24/17.
//  Copyright © 2017 Nikhil Tanappagol. All rights reserved.
//

import XCTest

class AutomatedTestCounterUITests: XCTestCase {
        
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
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let app = XCUIApplication()
        let button = app.buttons["clickMe"]
        
        for _ in 1...100
        {
            button.tap()
        }
        
        let myLabel = app.staticTexts["auto_label"]
        
        let labelText = myLabel.label
        
        let expectedCounter = String(100)
        
       if (labelText.contains (expectedCounter))
       {
        print("Test Passes")
        } else
       {
        print("Test Failed")
        }
        sleep(5)
        
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
}
