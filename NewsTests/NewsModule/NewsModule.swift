//
//  NewsModule.swift
//  NewsTests
//
//  Created by Artem Kutasevich on 4.04.22.
//

import XCTest
@testable import News

class NewsModule: XCTestCase {
    
    func testModuleCreated() {
        let view = NewsViewController()
        let model = NewsModel()
        let controller = NewsController(view: view, model: model)
        
        XCTAssertNotNil(view.controller, "view.controller is nil")
        XCTAssertNotNil(model.controller, "model.controller is nil")
        
        XCTAssertNotNil(controller.view, "controller.view is nil")
        XCTAssertNotNil(controller.model, "controller.model is nil")
    }
}
