//
//  RepositoriesCoordinatorProtocol.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import UIKit

protocol RepositoriesCoordinatorProtocol: Coordinator {
    var tabbarController: UITabBarController { get set }
    var currentTab: Int { get }
}

