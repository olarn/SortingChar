//
//  SortingCharUITests.swift
//  SortingCharUITests
//
//  Created by Olarn U. on 7/30/2559 BE.
//  Copyright © 2559 Olarn U. All rights reserved.
//

import XCTest

class SortingCharUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testDisplaySortedCharWhenClickSort() {
        let app = XCUIApplication()
        
        app.textFields["inputField"].tap()
        app.textFields["inputField"].typeText("zad")
        app.buttons["Sorting"].tap()
        XCTAssertTrue(app.staticTexts["SortedCharText"].label == "adz")
    }

    func testDisplayBlankWhenCharIsEmpty() {
        let app = XCUIApplication()
        app.textFields["inputField"].tap()
        app.textFields["inputField"].typeText("")
        app.buttons["Sorting"].tap()
        let expectError = "Please enter text before call sort."
        XCTAssertTrue(app.staticTexts["SortedCharText"].label == expectError)
    }
}
