//
//  TestPresenter.swift
//  RobustaTask
//
//  Created mohamed shera on 08/05/2022.
//

import Foundation

// MARK: View -
protocol TestViewProtocol: class {

}

// MARK: Presenter -
protocol TestPresenterProtocol: class {
	var view: TestViewProtocol? { get set }
    func viewDidLoad()
}

class TestPresenter: TestPresenterProtocol {

    weak var view: TestViewProtocol?
    
    init(with view: identifier___ViewProtocol = ___VARIABLE_productName()) {
           self.view = view
       }

    func viewDidLoad() {

    }
}
