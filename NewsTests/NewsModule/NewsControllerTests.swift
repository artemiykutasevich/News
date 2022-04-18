//
//  NewsControllerTests.swift
//  NewsTests
//
//  Created by Artem Kutasevich on 4.04.22.
//

import XCTest
@testable import News

class NewsControllerTests: XCTestCase {
    
    var controller: NewsController!
    
    override func setUp() {
        let view = NewsViewController()
        let model = NewsModel()
        controller = NewsController(view: view, model: model)
    }
    
    override func tearDown() {
        controller = nil
    }
    
    func testControllerContainsView() {
        XCTAssertNotNil(controller.view, "view is nil")
    }
    
    func testControllerContainsModel() {
        XCTAssertNotNil(controller.model, "model is nil")
    }
    
    func testControllerContainsNotification() {
        XCTAssertNotNil(controller.notifacation, "notification is nil")
    }
}
