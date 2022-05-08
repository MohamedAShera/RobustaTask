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
    
    static func fromNib(named: String? = nil) -> Self {
        let name = named ?? "\(Self.self)"
        guard
            let nib = Bundle.main.loadNibNamed(name, owner: nil, options: nil)
            else { fatalError("missing expected nib named: \(name)") }
        guard
            /// we're using `first` here because compact map chokes compiler on
            /// optimized release, so you can't use two views in one nib if you wanted to
            /// and are now looking at this
            let view = nib.first as? Self
            else { fatalError("view of type \(Self.self) not found in \(nib)") }
        return view
    }
    
    @IBInspectable var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
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

