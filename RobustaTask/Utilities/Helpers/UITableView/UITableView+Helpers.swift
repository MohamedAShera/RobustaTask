//
//  UITableView+Helpers.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import UIKit

extension UITableView {
    func registerCellNib<T: UITableViewCell>(_: T.Type, reuseIdentifier: String? = nil) {
        let nibName = reuseIdentifier ?? T.classNameWithoutNamespaces
        self.register(T.loadNib(), forCellReuseIdentifier: nibName)
    }
    
    /// dequeue cell with generics
    func dequeue<T: UITableViewCell>(at indexPath: IndexPath) -> T {
        guard
            let cell = dequeueReusableCell(withIdentifier: String(describing: T.self), for: indexPath) as? T
        else { fatalError("Could not deque cell with type \(T.self)") }
        return cell
    }
}


