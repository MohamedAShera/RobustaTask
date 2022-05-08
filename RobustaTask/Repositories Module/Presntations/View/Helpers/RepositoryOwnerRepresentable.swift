//
//  RepositoryOwnerRepresentable.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import Foundation

protocol RepositoryOwnerRepresentable {
    var ownerId: Int { get }
    var ownerName: String { get }
    var ownerURLImage: String { get }
}
