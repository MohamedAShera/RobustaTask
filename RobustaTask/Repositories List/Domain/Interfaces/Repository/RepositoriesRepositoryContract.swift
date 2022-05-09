//
//  RepositoriesRepositoryContract.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import Foundation
protocol RepositoriesRepositoryContract {
    func getRepositories(completion: @escaping (Result<[Item], Error>) -> Void)
}
