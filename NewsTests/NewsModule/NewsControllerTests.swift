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
        let view = NewsViewController()
        view.createModule()
        
        XCTAssertNotNil(view.controller?.view, "view is nil")
    }
    
    func testControllerContainsModel() {
        let view = NewsViewController()
        view.createModule()
        
        XCTAssertNotNil(view.controller?.model, "model is nil")
    }
    
    func testRequest() {
        let view = NewsViewController()
        let model = NewsModel()
        let controller = NewsController(view: view, model: model)
        
        DispatchQueue.main.async {
            controller.makeRequest()
            XCTAssertNotNil(model.newsline, "model newsline is nil")
        }
    }
}
