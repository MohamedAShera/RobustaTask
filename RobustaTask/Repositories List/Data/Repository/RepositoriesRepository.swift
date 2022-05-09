//
//  RepositoriesRepository.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import Foundation

final class RepositoriesRepository {
    private let service: RepositoriesServiceContract
    
    init(service: RepositoriesServiceContract = RepositoriesService()) {
        self.service = service
    }
    
}

//MARK: - RepositoriesRepositoryContract
extension RepositoriesRepository: RepositoriesRepositoryContract {
    func getRepositories(searchKey: String, page: Int, count: Int, completion: @escaping (Result<RepositoryResponse, Error>) -> Void) {
        service
            .getRepositories(
                searchKey: searchKey,
                page: page,
                count: count,
                completion: completion
            )
    }
}
