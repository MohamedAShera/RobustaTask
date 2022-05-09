//
//  RepositoryDetailsPresenter.swift
//  RobustaTask
//
//  Created mohamed shera on 08/05/2022.
//

import Foundation

class RepositoryDetailsPresenter: RepositoryDetailsPresenterProtocol {

    weak var view: RepositoryDetailsViewProtocol?
    init(
        view: RepositoryDetailsViewProtocol = RepositoryDetailsViewController()
    ) {
        self.view = view
    }
    func viewDidLoad() {

    }
}
