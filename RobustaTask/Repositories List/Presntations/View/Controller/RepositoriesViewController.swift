//
//  RepositoriesViewController.swift
//  RobustaTask
//
//  Created mohamed shera on 08/05/2022.
//

import UIKit

class RepositoriesViewController: UIViewController {
    
	var presenter: RepositoriesPresenterProtocol?
    weak var coordinator: RepositoriesCoordinator?
    var repositories: [RepositoryRepresentable] = []
    
    
    @IBOutlet weak var searchBar: UISearchBar! {
        didSet {
            searchBar.delegate = self
        }
    }
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.dataSource = self
            tableView.delegate = self
        }
    }
    
	override func viewDidLoad() {
        super.viewDidLoad()
        tableView.registerCellNib(RepositoryTableViewCell.self)
        presenter = RepositoriesPresenter(view: self)
        navigationItem.title = "Search"
    }
}

//MARK: - RepositoriesViewProtocol

extension RepositoriesViewController: RepositoriesViewProtocol {
    func dispalyRepositories(repositories: [RepositoryRepresentable]) {
        self.repositories = repositories
        tableView.reloadData()
    }
}

// MARK: -UISearchBarDelegate

extension RepositoriesViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        presenter?.fetchRepositories(searchKey: searchText.lowercased())
    }

    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.searchTextField.resignFirstResponder()
    }
}

extension RepositoriesViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        repositories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: RepositoryTableViewCell = tableView.dequeue(at: indexPath)
        cell.bind(item: repositories[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        coordinator?.presentRepoDetails(item: repositories[indexPath.row])
    }
}
