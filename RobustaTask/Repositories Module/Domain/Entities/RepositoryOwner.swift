//
//  RepositoryOwner.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import Foundation

struct RepositoryOwner: Codable {
    let id: Int?
    let name: String?
    let avatarURLString: String?

}

extension RepositoryOwner: RepositoryOwnerRepresentable {
    var ownerId: Int {
        self.id.value
    }
    
    var ownerName: String {
        self.name.value
    }
    
    var ownerURLImage: String {
        self.avatarURLString.value
    }
    
    
}
