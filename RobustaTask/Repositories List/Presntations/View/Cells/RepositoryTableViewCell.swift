//
//  RepositoryTableViewCell.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import UIKit

class RepositoryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var repositoryNameLabel: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var ownerNameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func bind(item: RepositoryRepresentable) {
        repositoryNameLabel.text = item.repositoryName
        userImage.load(urlString: item.repositoryOwner?.ownerURLImage)
        ownerNameLabel.text = item.repositoryOwner?.ownerName
        dateLabel.text = item.dateInString
    }
}
