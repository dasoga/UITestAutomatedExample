//
//  EasyAnchorsUITests.swift
//  EasyAnchorsUITests
//
//  Created by Dante Solorio on 8/24/18.
//  Copyright © 2018 Dante Solorio. All rights reserved.
//

import XCTest

class EasyAnchorsUITests: XCTestCase {
        
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
        let cell2StaticText = app.staticTexts["Cell - 2"]
        cell2StaticText.tap()
        
        let backButton = app.navigationBars["EasyAnchors.DetailView"].buttons["Back"]
        backButton.tap()
        app.tables/*@START_MENU_TOKEN@*/.staticTexts["Cell - 2"]/*[[".cells.staticTexts[\"Cell - 2\"]",".staticTexts[\"Cell - 2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        cell2StaticText.tap()
        backButton.tap()
        
    }
    
}
