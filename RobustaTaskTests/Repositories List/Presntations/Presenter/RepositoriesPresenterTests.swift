//
//  RepositoriesPresenterTests.swift
//  RobustaTaskTests
//
//  Created by mohamed shera on 09/05/2022.
//

@testable import RobustaTask
import XCTest

class RepositoriesPresenterTests: XCTestCase {
    private var sut: RepositoriesPresenter!
    
    override func setUp() {
        super.setUp()
        sut = RepositoriesPresenter(
            fetchRepositoriesUseCase: MockFetchRepositoriesUseCase(),
            searchOnLocalRepoUseCase: MockSearchOnLocalRepoUseCase()
        )
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func testSUT_whenFetchRepoCalled_homeDataAreRecieved() {
        // When
        sut
            .fetchRepositories(searchKey: "te")
        
        // Then
        XCTAssertNotNil(sut.filterdRepo)
    }
}

