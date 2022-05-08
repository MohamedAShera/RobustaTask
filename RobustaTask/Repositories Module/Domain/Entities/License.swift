//
//  License.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import Foundation

struct License: Codable {
    let key, name: String?
    let url: String?

    enum CodingKeys: String, CodingKey {
        case key, name
        case url
    }
}
