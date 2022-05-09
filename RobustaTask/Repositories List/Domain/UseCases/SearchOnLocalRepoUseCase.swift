//
//  SearchOnLocalRepoUseCase.swift
//  RobustaTask
//
//  Created by mohamed shera on 09/05/2022.
//

import Foundation

final class SearchOnLocalRepoUseCase: SearchOnLocalRepoUseCaseContract {
    func execute(from searchKey: String, and list: [RepositoryRepresentable]) -> [RepositoryRepresentable] {
        return list.filter { $0.repositoryName.hasPrefix(searchKey) }
    }
}
