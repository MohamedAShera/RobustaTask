//
//  RepositoriesRepositoryTests.swift
//  RobustaTaskTests
//
//  Created by mohamed shera on 09/05/2022.
//
@testable import RobustaTask
import XCTest

class RepositoriesRepositoryTests: XCTestCase {
    private var expectationDesc: String!
    private var sut: RepositoriesRepository!
    
    override func setUp() {
        super.setUp()
        expectationDesc = "RepositoriesRepositoryTests"
        sut = RepositoriesRepository(service: MockRepositoriesService())
    }
    
    override func tearDown() {
        sut = nil
        expectationDesc = nil
        super.tearDown()
    }
    
    func testSUT_whenFetchRepoIsCalled_dataAreRecieved() {
        // Given
        let exp = expectation(description: expectationDesc)
        
        // When
        sut.getRepositories(completion: { result in
            guard case let .success(data) = result else {
                return
            }
            exp.fulfill()
            XCTAssertNotNil(data)
        })
        
        // Then
        waitForExpectations(timeout: 1.0)
    }
}
