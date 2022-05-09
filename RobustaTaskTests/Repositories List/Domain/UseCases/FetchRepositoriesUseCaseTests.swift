//
//  FetchRepositoriesUseCaseTests.swift
//  RobustaTaskTests
//
//  Created by mohamed shera on 09/05/2022.
//

@testable import RobustaTask
import XCTest

class FetchRepositoriesUseCaseTests: XCTestCase {
    private var expectationDesc: String!
    private var sut: FetchRepositoriesUseCase!
    
    override func setUp() {
        super.setUp()
        expectationDesc = "FetchRepositoriesUseCaseTests"
        sut = FetchRepositoriesUseCase(repository: MockRepositoriesRepository())
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
        sut.execute(completion: { result in
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

