//
//  CoordinatorDelegate.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import Foundation

protocol CoordinatorDelegate: AnyObject {
    func coordinatorDidEnd(_ childCoordinator: Coordinator)
}

