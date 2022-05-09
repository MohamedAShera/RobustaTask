//
//  RepositoryDetailsViewController.swift
//  RobustaTask
//
//  Created mohamed shera on 08/05/2022.
//

import UIKit

class RepositoryDetailsViewController: UIViewController, RepositoryDetailsViewProtocol {
    
    static func create(item: RepositoryRepresentable?) -> RepositoryDetailsViewController {
        let vc = RepositoryDetailsViewController()
        vc.item = item
        return vc
    }
    
    @IBOutlet weak var repositoryImage: UIImageView!
    @IBOutlet weak var ownerNameLabel: UILabel!
    @IBOutlet weak var forksCountLabel: UILabel!
    @IBOutlet weak var dateCreatedLabel: UILabel!
    @IBOutlet weak var starsCountLabel: UILabel!
    @IBOutlet weak var licenseLabel: UILabel!
    @IBOutlet weak var languageLabel: UILabel!
    
	var presenter: RepositoryDetailsPresenterProtocol?
    var item: RepositoryRepresentable?

	override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.view = self
        addLoadedData(item: item)
        presenter = RepositoryDetailsPresenter(view: self)
        presenter?.viewDidLoad()
    }
    
    private func addLoadedData(item: RepositoryRepresentable?) {
        navigationItem.title = item?.repositoryName
        repositoryImage.load(urlString: item?.repositoryOwner?.ownerURLImage)
        ownerNameLabel.text = (item?.repositoryOwner?.ownerName).value
        forksCountLabel.text = item?.numberOfForks.description
        dateCreatedLabel.text = item?.creationDate.description
        starsCountLabel.text = item?.numberOfStars.description
        licenseLabel.text = item?.licenseName
        languageLabel.text = item?.repositoryLanguage
        
    }
    
}
