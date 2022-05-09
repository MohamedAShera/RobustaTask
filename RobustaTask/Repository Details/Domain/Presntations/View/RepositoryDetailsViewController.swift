//
//  RepositoryDetailsViewController.swift
//  RobustaTask
//
//  Created mohamed shera on 08/05/2022.
//

import UIKit

class RepositoryDetailsViewController: UIViewController {
    
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
    
    var item: RepositoryRepresentable?

	override func viewDidLoad() {
        super.viewDidLoad()
        addLoadedData(item: item)
    }
    
    private func addLoadedData(item: RepositoryRepresentable?) {
        navigationItem.title = item?.repositoryName
        repositoryImage.load(urlString: item?.repositoryOwner?.ownerURLImage)
        ownerNameLabel.text = (item?.repositoryOwner?.ownerName).value
        forksCountLabel.text = item?.numberOfForks.description
        dateCreatedLabel.text = item?.dateInString
        starsCountLabel.text = item?.numberOfStars.description
        licenseLabel.text = item?.licenseName
        languageLabel.text = item?.repositoryLanguage
        
    }
    
}
