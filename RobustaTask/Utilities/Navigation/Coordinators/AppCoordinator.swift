//
//  AppCoordinator.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import UIKit

final class AppCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    weak var delegate: CoordinatorDelegate?
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let repositoriesCoordinator = RepositoriesCoordinator(navigationController)
        childCoordinators.append(repositoriesCoordinator)
        repositoriesCoordinator.start()
    }
}

