//
//  NewsModelTests.swift
//  NewsTests
//
//  Created by Artem Kutasevich on 4.04.22.
//

import XCTest
@testable import News

class NewsModelTests: XCTestCase {
    
    var model: NewsModel!
    
    override func setUp() {
        model = NewsModel()
    }
    
    override func tearDown() {
        model = nil
    }
    
    func testModelContainsController() {
        let view = NewsViewController()
        view.createModule()
        
        XCTAssertNotNil(view.controller?.model?.controller, "controller is nil")
    }
    
    func testModelContainsNewsline() {
        XCTAssertNotNil(model.newsline, "newsline is nil")
    }
}
