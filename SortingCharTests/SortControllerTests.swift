//
//  SortControllerTests.swift
//  SortingChar
//
//  Created by Olarn U. on 7/30/2559 BE.
//  Copyright © 2559 Olarn U. All rights reserved.
//

import XCTest
@testable import SortingChar

class SortControllerTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testDisplayResultShouldHaveBeenCalledWhenSorted() {
        let vc = MockViewController()
        let sortPresenter = SortPresenter(vc: vc)
        sortPresenter.sort("cat")
        XCTAssertTrue(vc.spyCall == true)
    }
    
    func testDisplayResultWhenTextIsEmpty() {
        let vc = MockViewController()
        let sortPresenter = SortPresenter(vc: vc)
        sortPresenter.sort("")
        XCTAssertTrue(vc.spyDiplayEmpty == true)
    }
    
}

class MockViewController: SortPresenterProtocol {
    
    var spyCall: Bool = false
    var spyDiplayEmpty: Bool = false
    
    func displaySortedResult(sortedString: String) {
        spyCall = true
    }
    
    func displayEnptyDisplay() {
        spyDiplayEmpty = true
    }
}