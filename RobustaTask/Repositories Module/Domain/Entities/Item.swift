//
//  Item.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import Foundation

struct Item: Codable {
    let id: Int?
    let name, fullName: String?
    let createdAt: Date?
    let forks, openIssues, watchers: Int?
    let size, stargazersCount, watchersCount: Int?
    let language: String?
    let license: License?
    let owner: RepositoryOwner?

    enum CodingKeys: String, CodingKey {
        case id, size, name, license, forks, language, watchers, owner
        case fullName = "full_name"
        case createdAt = "created_at"
        case openIssues = "open_issues"
        case stargazersCount = "stargazers_count"
        case watchersCount = "watchers_count"
    }
}

extension Item: RepositoryRepresentable {
    var repositoryId: Int {
        self.id.value
    }
    
    var repositoryName: String {
        self.name.value
    }
    
    var creationDate: Date {
        self.createdAt ?? Date()
    }
    
    var repositoryOwner: RepositoryOwnerRepresentable? {
        self.owner
    }
    
    var numberOfForks: Int {
        self.forks.value
    }
    
    var numberOfStars: Int {
        self.stargazersCount.value
    }
    
    var repositoryLanguage: String {
        self.language.value
    }
    
    var licenseName: String {
        (self.license?.name).value
    }
}

