//
//  NewsModelTests.swift
//  NewsTests
//
//  Created by Artem Kutasevich on 4.04.22.
//

import XCTest
@testable import News

class NewsModelTests: XCTestCase {
    
    func testModelContainsController() {
        let model = NewsModel()
        XCTAssertNotNil(model.controller, "controller is nil")
    }
}
