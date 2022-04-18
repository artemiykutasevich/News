//
//  NewsModule.swift
//  NewsTests
//
//  Created by Artem Kutasevich on 4.04.22.
//

import XCTest
@testable import News

class NewsModuleTests: XCTestCase {
    
    var view: NewsViewController!
    var model: NewsModel!
    var controller: NewsController!
    
    override func setUp() {
        view = NewsViewController()
        model = NewsModel()
        controller = NewsController(view: view, model: model)
    }
    
    override func tearDown() {
        view = nil
        model = nil
        controller = nil
    }
    
    func testModuleCreated() {
        XCTAssertNotNil(view.controller, "view.controller is nil")
        XCTAssertNotNil(model.controller, "model.controller is nil")
        
        XCTAssertNotNil(controller.view, "controller.view is nil")
        XCTAssertNotNil(controller.model, "controller.model is nil")
    }
}
