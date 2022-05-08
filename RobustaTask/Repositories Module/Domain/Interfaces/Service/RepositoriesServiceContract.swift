//
//  RepositoriesServiceContract.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//


protocol RepositoriesServiceContract {
    func getRepositories(searchKey: String, page: Int, count: Int, completion: @escaping (Result<RepositoryResponse, Error>) -> Void)
}

