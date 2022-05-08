//
//  RepositoriesPresenter.swift
//  RobustaTask
//
//  Created mohamed shera on 08/05/2022.
//

import UIKit

// MARK: View -
protocol RepositoriesViewProtocol: AnyObject {

}

// MARK: Presenter -
protocol RepositoriesPresenterProtocol: AnyObject {
	var view: RepositoriesViewProtocol? { get set }
    func viewDidLoad()
}

class RepositoriesPresenter: RepositoriesPresenterProtocol {

    weak var view: RepositoriesViewProtocol?
    
    init(with view: RepositoriesViewProtocol = RepositoriesViewController()) {
           self.view = view
       }

    func viewDidLoad() {
        print("hello from presenter")
    }
}
