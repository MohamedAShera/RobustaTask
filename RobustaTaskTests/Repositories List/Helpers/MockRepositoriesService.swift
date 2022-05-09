//
//  MockRepositoriesService.swift
//  RobustaTaskTests
//
//  Created by mohamed shera on 09/05/2022.
//

@testable import RobustaTask
import Foundation

final class MockRepositoriesService: RepositoriesServiceContract {
    func getRepositories(completion: @escaping (Result<[Item], Error>) -> Void) {
        completion(.success(MockData.items))
    }
}
