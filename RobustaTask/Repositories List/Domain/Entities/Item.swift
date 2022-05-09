//
//  Item.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import Foundation

struct Item: Codable {
    let id: Int?
    let name: String?
    let createdAt: Date?
    let owner: RepositoryOwner?
    
    enum CodingKeys: String, CodingKey {
        case id, name, owner
        case createdAt = "created_at"
    }
}

extension Item: RepositoryRepresentable {
    var repositoryId: Int {
        self.id.value
    }
    
    var repositoryName: String {
        (self.name?.lowercased()).value
    }
    
    var dateInString: String {
        (self.createdAt?.timeAgoDisplay()).value
    }
    
    var repositoryOwner: RepositoryOwnerRepresentable? {
        self.owner
    }
}
