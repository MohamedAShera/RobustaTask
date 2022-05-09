//
//  RepositoriesService.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import Foundation

final class RepositoriesService {
    private let apiService: APIServiceContract
    
    init(
        apiService: APIServiceContract = APIService.shared
    ) {
        self.apiService = apiService
    }
    
}

//MARK: - RepositoriesServiceContract
extension RepositoriesService: RepositoriesServiceContract {
    func getRepositories(completion: @escaping (Result<[Item], Error>) -> Void) {
        let request = APIBuilder()
            .setPath(using: APIConstants.repositories)
            .setMethod(using: .get)
            .build()
        
        apiService.request(using: request, responseType: [Item].self, decoder: JSONDecoder(), completion: completion)
    }
}
