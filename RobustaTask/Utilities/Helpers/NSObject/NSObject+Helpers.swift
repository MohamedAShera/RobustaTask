//
//  NSObject+Helpers.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import Foundation

extension NSObject {
    /// Returns the receiver's classname as a string, not including the namespace.
    class var classNameWithoutNamespaces: String {
        return String(describing: self)
    }
}

