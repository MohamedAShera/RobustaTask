//
//  RepositoryResponse.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import Foundation

struct RepositoryResponse: Codable {
    let totalCount: Int?
    let items: [Item]?

    enum CodingKeys: String, CodingKey {
        case totalCount = "total_count"
        case items
    }
}

