//
//  SearchOnLocalRepoUseCaseContarct.swift
//  RobustaTask
//
//  Created by mohamed shera on 09/05/2022.
//

import Foundation

protocol SearchOnLocalRepoUseCaseContract {
    func execute(from searchKey: String, and list: [RepositoryRepresentable]) -> [RepositoryRepresentable]
}
