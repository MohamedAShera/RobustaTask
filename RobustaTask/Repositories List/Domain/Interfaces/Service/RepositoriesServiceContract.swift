//
//  RepositoriesServiceContract.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//


protocol RepositoriesServiceContract {
    func getRepositories(completion: @escaping (Result<[Item], Error>) -> Void)
}
