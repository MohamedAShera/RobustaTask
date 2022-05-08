//
//  FetchRepositoriesUseCaseContract.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import Foundation

protocol FetchRepositoriesUseCaseContract {
    func execute(searchKey: String, page: Int, count: Int, completion: @escaping (Result<RepositoryResponse, Error>) -> Void)
}
