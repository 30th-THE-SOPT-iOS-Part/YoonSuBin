//
//  UIView+.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/05/09.
//

import UIKit

extension UIView {
    
    static var className: String {
        NSStringFromClass(self.classForCoder()).components(separatedBy: ".").last!
    }

    var className: String {
        NSStringFromClass(self.classForCoder).components(separatedBy: ".").last!
    }
}
