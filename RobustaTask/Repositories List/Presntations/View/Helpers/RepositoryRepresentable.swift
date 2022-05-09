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
    var numberOfForks: Int { get }
    var numberOfStars: Int { get }
    var repositoryLanguage: String { get }
    var licenseName: String { get }
}

//MARK: - Default Values
//extension RepositoryRepresentable {
//    var id: Int {
//        0
//    }
//    name
//    creationDate
//    numberOfForks
//    numberOfStars
//    language
//    licenseName
//}
