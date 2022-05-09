//
//  RepositoryDetailsPresenterProtocol.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import Foundation

protocol RepositoryDetailsPresenterProtocol: AnyObject {
    var view: RepositoryDetailsViewProtocol? { get set }
    func viewDidLoad()
}
