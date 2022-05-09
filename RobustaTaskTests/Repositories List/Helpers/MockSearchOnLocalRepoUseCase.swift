//
//  MockSearchOnLocalRepoUseCase.swift
//  RobustaTaskTests
//
//  Created by mohamed shera on 09/05/2022.
//

@testable import RobustaTask
import Foundation

final class MockSearchOnLocalRepoUseCase: SearchOnLocalRepoUseCaseContract {
    func execute(from searchKey: String, and list: [RepositoryRepresentable]) -> [RepositoryRepresentable] {
        return MockData.items
    }
}

