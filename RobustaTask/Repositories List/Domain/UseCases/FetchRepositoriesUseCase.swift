//
//  FetchRepositoriesUseCase.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import Foundation

final class FetchRepositoriesUseCase: FetchRepositoriesUseCaseContract {
    private let repository: RepositoriesRepositoryContract
    
    init(repository: RepositoriesRepositoryContract = RepositoriesRepository()) {
        self.repository = repository
    }
    func execute(
        completion: @escaping (Result<[Item], Error>) -> Void
    ) {
        repository
            .getRepositories(
                completion: completion
            )
    }
}
