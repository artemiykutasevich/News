//
//  NewsTableViewCellTests.swift
//  NewsTests
//
//  Created by Artem Kutasevich on 9.04.22.
//

import XCTest
@testable import News

class NewsTableViewCellTests: XCTestCase {
    
    func testNewsTableViewCell() {
        let cell = NewsTableViewCell()
        XCTAssertNotNil(cell, "cell is nil")
    }
    
    func testNewsTableViewCellTitle() {
        let cell = NewsTableViewCell()
        XCTAssertNotNil(cell.titleLabel, "cell title is nil")
    }
    
    func testNewsTableViewCellBody() {
        let cell = NewsTableViewCell()
        XCTAssertNotNil(cell.bodyLabel, "cell body is nil")
    }
    
    func testNewsTableViewCellImage() {
        let cell = NewsTableViewCell()
        XCTAssertNotNil(cell.pictureImageView, "cell image is nil")
    }
}
