//
//  RepositoriesViewController.swift
//  RobustaTask
//
//  Created mohamed shera on 08/05/2022.
//

import UIKit

class RepositoriesViewController: UIViewController, RepositoriesViewProtocol {

	var presenter: RepositoriesPresenterProtocol?
    weak var coordinator: CoordinatorDelegate?
    

	override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        presenter = RepositoriesPresenter(with: self)
        presenter?.viewDidLoad()
    }

}
