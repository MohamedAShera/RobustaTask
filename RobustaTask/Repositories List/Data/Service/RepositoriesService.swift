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
    func getRepositories(searchKey: String, page: Int, count: Int, completion: @escaping (Result<RepositoryResponse, Error>) -> Void) {
        let request = APIBuilder()
            .setPath(using: APIConstants.repositories)
            .setMethod(using: .get)
            .setParameters(using: .query(["q": searchKey, "per_page": count, "page" : page]))
            .build()
        
        apiService.request(using: request, responseType: RepositoryResponse.self, decoder: JSONDecoder(), completion: completion)
    }
}
