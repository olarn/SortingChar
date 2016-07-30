//
//  SortingCharTests.swift
//  SortingCharTests
//
//  Created by Olarn U. on 7/30/2559 BE.
//  Copyright © 2559 Olarn U. All rights reserved.
//

import XCTest
@testable import SortingChar

class SortingCharTests: XCTestCase {
    
    var sorter: Sorter!

    override func setUp() {
        super.setUp()
        sorter = Sorter()
    }
    
    func testInputCatShouldBeAct() {
        let result = sorter.sort("cat")
        XCTAssertEqual("act", result)
    }
    
    func testInputDogShoulbBeDgo() {
        let result = sorter.sort("dog")
        XCTAssertEqual("dgo", result)
    }
    
    func testInputHorseShouldBeEhors() {
        let result = sorter.sort("horse")
        XCTAssertEqual("ehors", result)
    }
    
    func testInputUpperHorseShouldBeEhors() {
        let result = sorter.sort("Horse")
        XCTAssertEqual("ehors", result)
    }
    
    func testInputHorseWithWhiteSpaceShouldBeAehors() {
        let result = sorter.sort("A horse")
        XCTAssertEqual("aehors", result)
    }
    
}
