//
//  FetchRepositoriesUseCaseContract.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import Foundation

protocol FetchRepositoriesUseCaseContract {
    func execute(completion: @escaping (Result<[Item], Error>) -> Void)
}
