//
//  RepositoriesPresenterProtocol.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import Foundation

protocol RepositoriesPresenterProtocol: AnyObject {
    var view: RepositoriesViewProtocol? { get set }
    var repositories: [RepositoryRepresentable] { get set }
    func fetchWithDebounceRepositories(searchKey: String)
}
