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
        searchKey: String,
        page: Int,
        count: Int,
        completion: @escaping (Result<RepositoryResponse, Error>) -> Void
    ) {
        repository
            .getRepositories(
                searchKey: searchKey,
                page: page,
                count: count,
                completion: completion
            )
    }
}
