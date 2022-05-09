//
//  RepositoriesPresenter.swift
//  RobustaTask
//
//  Created mohamed shera on 08/05/2022.
//

import UIKit

class RepositoriesPresenter: RepositoriesPresenterProtocol {
    
    weak var view: RepositoriesViewProtocol?
    var repositories: [RepositoryRepresentable] = []
    private var timer: Timer?
    private let fetchRepositoriesUseCase: FetchRepositoriesUseCaseContract
    
    
    init(
        view: RepositoriesViewProtocol = RepositoriesViewController(),
        fetchRepositoriesUseCase: FetchRepositoriesUseCaseContract = FetchRepositoriesUseCase()
    ) {
        self.view = view
        self.fetchRepositoriesUseCase = fetchRepositoriesUseCase
    }
    
    func fetchWithDebounceRepositories(searchKey: String) {
        timer?.invalidate()
        timer = .scheduledTimer(withTimeInterval: 0.05, repeats: false) { [weak self] timer in
            guard let self = self else { return }
            self.fetchRepositories(searchKey: searchKey)
        }
    }
}

//MARK: - Private funcation

private extension RepositoriesPresenter {
    func fetchRepositories(searchKey: String) {
        guard searchKey.count > 1 else { return }
        fetchRepositoriesUseCase.execute(searchKey: searchKey, page: 1, count: 100) { result in
            guard case let .success(data) = result else {
                // handel error
                return
            }
            DispatchQueue.main.async { [weak self] in
                guard let self = self else { return }
                self.repositories = data.items ?? []
                self.view?.dispalyRepositories(repositories: data.items ?? [])
            }
        }
    }
}
