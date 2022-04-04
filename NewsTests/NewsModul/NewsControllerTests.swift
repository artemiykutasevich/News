//
//  NewsControllerTests.swift
//  NewsTests
//
//  Created by Artem Kutasevich on 4.04.22.
//

import XCTest
@testable import News

class NewsControllerTests: XCTestCase {
    
    func testControllerContainsView() {
        let controller = NewsController()
        XCTAssertNotNil(controller.view, "view is nil")
    }
    
    func testControllerContainsModel() {
        let controller = NewsController()
        XCTAssertNotNil(controller.model, "model is nil")
    }
}
