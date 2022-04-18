//
//  NewsTableViewCellTests.swift
//  NewsTests
//
//  Created by Artem Kutasevich on 9.04.22.
//

import XCTest
@testable import News

class NewsTableViewCellTests: XCTestCase {
    
    var cell: NewsTableViewCell!
    var article: Article!
    
    override func setUp() {
        cell = NewsTableViewCell()
        article = Article(
            source: nil,
            author: nil,
            title: "new title",
            articleDescription: "new body",
            url: nil,
            urlToImage: nil,
            publishedAt: nil,
            content: nil)
    }
    
    override func tearDown() {
        cell = nil
        article = nil
    }
    
    func testNewsTableViewCell() {
        XCTAssertNotNil(cell, "cell is nil")
    }
    
    func testNewsTableViewCellTitle() {
        XCTAssertNotNil(cell.titleLabel, "cell title is nil")
    }
    
    func testNewsTableViewCellBody() {
        XCTAssertNotNil(cell.bodyLabel, "cell body is nil")
    }
    
    func testNewsTableViewCellImage() {
        XCTAssertNotNil(cell.pictureImageView, "cell image is nil")
    }
    
    func testSetUpCellTitle() {
        cell.setUpCell(from: article)
        XCTAssertEqual(cell.titleLabel.text, "new title")
    }
    
    func testSetUpCellBody() {
        cell.setUpCell(from: article)
        XCTAssertEqual(cell.bodyLabel.text, "new body")
    }
}
