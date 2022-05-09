//
//  RepositoriesViewProtocol.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import Foundation

protocol RepositoriesViewProtocol: AnyObject {
    var presenter: RepositoriesPresenterProtocol? { get }
    var repositories: [RepositoryRepresentable] { get }
    
    func dispalyRepositories(repositories: [RepositoryRepresentable])
}
