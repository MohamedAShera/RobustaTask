//
//  RepositoriesPresenter.swift
//  RobustaTask
//
//  Created mohamed shera on 08/05/2022.
//

import UIKit

class RepositoriesPresenter {
    weak var view: RepositoriesViewProtocol?
    var repositories: [RepositoryRepresentable] = []
    var filterdRepo: [RepositoryRepresentable] = []
    private var timer: Timer?
    private let fetchRepositoriesUseCase: FetchRepositoriesUseCaseContract
    private let searchOnLocalRepoUseCase: SearchOnLocalRepoUseCaseContract
    
    init(
        view: RepositoriesViewProtocol = RepositoriesViewController(),
        fetchRepositoriesUseCase: FetchRepositoriesUseCaseContract = FetchRepositoriesUseCase(),
        searchOnLocalRepoUseCase: SearchOnLocalRepoUseCaseContract = SearchOnLocalRepoUseCase()
    ) {
        self.view = view
        self.fetchRepositoriesUseCase = fetchRepositoriesUseCase
        self.searchOnLocalRepoUseCase = searchOnLocalRepoUseCase
        didLoad()
    }
}

//MARK: - RepositoriesPresenterProtocol

extension RepositoriesPresenter: RepositoriesPresenterProtocol {
    func fetchRepositories(searchKey: String) {
        guard searchKey.count > 1 else { return }
        filterdRepo = searchOnLocalRepoUseCase
            .execute(
                from: searchKey,
                and: repositories
            )
        self.view?.dispalyRepositories(repositories: filterdRepo)
    }
}

//MARK: - Private funcation

private extension RepositoriesPresenter {
    func didLoad() {
        fetchRepositoriesUseCase.execute { result in
            guard case let .success(data) = result else {
                // handel error
                return
            }
            self.repositories = data
        }
    }
}
