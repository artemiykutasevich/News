//
//  NewsViewControllerTests.swift
//  NewsTests
//
//  Created by Artem Kutasevich on 4.04.22.
//

import XCTest
@testable import News

class NewsViewControllerTests: XCTestCase {
    
    var view: NewsViewController!
    
    override func setUp() {
        view = NewsViewController()
    }
    
    override func tearDown() {
        view = nil
    }
    
    func testViewContainsController() {
        view.createModule()
        XCTAssertNotNil(view.controller, "controller is nil")
    }
    
    func testTableViewNotNilWhenViewIsLoaded() {
        view.loadViewIfNeeded()
        XCTAssertNotNil(view.tableView, "tableView is nil")
    }
}
