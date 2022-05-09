//
//  MockData.swift
//  RobustaTaskTests
//
//  Created by mohamed shera on 09/05/2022.
//

@testable import RobustaTask
import Foundation

enum MockData {
    static let repositoryOwner =  RepositoryOwner(
        login: "test",
        id: 0,
        avatarURL: "test"
    )
    static let item = Item(
        id: 0,
        name: "test",
        fullName: "test",
        createdAt: Date(),
        forks: 0,
        openIssues: 0,
        watchers: 0,
        size: 0,
        stargazersCount: 0,
        watchersCount: 0,
        language: "test",
        license: nil,
        owner: repositoryOwner
    )
    static let items = [item]
    
}
