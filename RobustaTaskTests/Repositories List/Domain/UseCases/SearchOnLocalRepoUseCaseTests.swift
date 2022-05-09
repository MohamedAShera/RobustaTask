//
//  SearchOnLocalRepoUseCaseTests.swift
//  RobustaTaskTests
//
//  Created by mohamed shera on 09/05/2022.
//

@testable import RobustaTask
import XCTest

class SearchOnLocalRepoUseCaseTests: XCTestCase {
    private var expectationDesc: String!
    private var sut: SearchOnLocalRepoUseCase!
    
    override func setUp() {
        super.setUp()
        sut = SearchOnLocalRepoUseCase()
    }
    
    override func tearDown() {
        sut = nil
        expectationDesc = nil
        super.tearDown()
    }
    
    func testSUT_whenSearchInLocalRepoIsCalled_dataAreRecieved() {
        // When
        let result = sut.execute(from: "te", and: MockData.items)
        
        // Then
        XCTAssertNotNil(result)
    }
    
    func testSUT_whenSearchNotExistInLocalRepoIsCalled_dataAreRecieved() {
        // When
        let result = sut.execute(from: "rr", and: MockData.items)
        
        // Then
        XCTAssertEqual(result.count, 0)
    }
}

