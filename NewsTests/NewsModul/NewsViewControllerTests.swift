//
//  NewsViewControllerTests.swift
//  NewsTests
//
//  Created by Artem Kutasevich on 4.04.22.
//

import XCTest
@testable import News

class NewsViewControllerTests: XCTestCase {
    
    func testViewContainsController() {
        let view = NewsViewController()
        XCTAssertNotNil(view.controller, "controller is nil")
    }
}
