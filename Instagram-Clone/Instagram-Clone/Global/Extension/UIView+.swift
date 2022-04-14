//
//  UIView+.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/14.
//

import UIKit

extension UIView {
    func makeRound(radius: CGFloat = 4) {
        layer.cornerRadius = radius
        clipsToBounds = true
    }
    
    func addSubviews(_ views: [UIView]) {
        views.forEach { self.addSubview($0) }
    }
}
