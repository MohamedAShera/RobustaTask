//
//  MockRepositoriesRepository.swift
//  RobustaTaskTests
//
//  Created by mohamed shera on 09/05/2022.
//

@testable import RobustaTask
import Foundation

final class MockRepositoriesRepository: RepositoriesRepositoryContract {
    func getRepositories(completion: @escaping (Result<[Item], Error>) -> Void) {
        completion(.success(MockData.items))
    }
}
