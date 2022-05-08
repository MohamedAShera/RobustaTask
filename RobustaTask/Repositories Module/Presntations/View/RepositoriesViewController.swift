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
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
	override func viewDidLoad() {
        super.viewDidLoad()
        presenter = RepositoriesPresenter(with: self)
        presenter?.viewDidLoad()
    }

}
