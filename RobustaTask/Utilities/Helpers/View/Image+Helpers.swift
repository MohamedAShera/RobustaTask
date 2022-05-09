//
//  Image+Helpers.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import UIKit

extension UIImageView {
    func load(urlString: String?) {
        guard let urlString = urlString, let url = URL(string: urlString) else { return }
        
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
