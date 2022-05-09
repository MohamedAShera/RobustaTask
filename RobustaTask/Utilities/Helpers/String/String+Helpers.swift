//
//  String+Helpers.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import Foundation
extension String {
    var localized: String {
        NSLocalizedString(
            self,
            value: self,
            comment: ""
        )
    }
    
    func localizedFormat(using arguments: [CVarArg]) -> String {
        return String(format: self.localized, arguments: arguments)
    }
}
