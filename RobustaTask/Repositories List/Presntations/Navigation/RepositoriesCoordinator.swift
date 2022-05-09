//
//  RepositoriesCoordinator.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import UIKit

final class RepositoriesCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    weak var delegate: CoordinatorDelegate?
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let repositoriesViewController = RepositoriesViewController()
        repositoriesViewController.coordinator = self
        navigationController.pushViewController(repositoriesViewController, animated: true)
//        navigationController.setViewControllers([repositoriesViewController], animated: false)
    }
}

extension RepositoriesCoordinator: CoordinatorDelegate {
    func coordinatorDidEnd(_ childCoordinator: Coordinator) {
        
    }
    
    func presentRepoDetails(item: RepositoryRepresentable) {
        let vc = RepositoryDetailsViewController.create(item: item)
        navigationController.pushViewController(vc, animated: true)
    }
}

