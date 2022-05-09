//
//  RepositoryRepresentable.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import Foundation

protocol RepositoryRepresentable {
    var repositoryId: Int { get }
    var repositoryName: String { get }
    var dateInString: String { get }
    var repositoryOwner: RepositoryOwnerRepresentable? { get }
}
