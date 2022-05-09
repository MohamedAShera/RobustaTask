//
//  View+Helpers.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import Foundation
import UIKit

extension UIView {
    /// Returns the Nib associated with the received: It's filename is expected to match the Class Name
    static func loadNib() -> UINib {
        return UINib(nibName: classNameWithoutNamespaces, bundle: nil)
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            if self.layer.shadowOpacity > 0 {
               layer.masksToBounds = false
            } else {
                layer.masksToBounds = true
            }

            layer.cornerRadius = abs(CGFloat(Int(newValue * 100)) / 100)
        }
    }    
}

