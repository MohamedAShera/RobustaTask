//
//  RepositoryOwner.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import Foundation

struct RepositoryOwner: Codable {
    let login: String?
    let id: Int?
    let avatarURL: String?
    

    enum CodingKeys: String, CodingKey {
        case login, id
        case avatarURL = "avatar_url"
    }
}

extension RepositoryOwner: RepositoryOwnerRepresentable {
    var ownerId: Int {
        self.id.value
    }
    
    var ownerName: String {
        self.login.value
    }
    
    var ownerURLImage: String {
        self.avatarURL.value
    }
    
    
}
