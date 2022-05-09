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
    func getRepositories(completion: @escaping (Result<[Item], Error>) -> Void) {
        service
            .getRepositories(
                completion: completion
            )
    }
}
