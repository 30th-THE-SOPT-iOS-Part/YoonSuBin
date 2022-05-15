//
//  UIViewController+.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/17.
//

import UIKit

extension UIViewController {
    
    static var className: String {
        NSStringFromClass(self.classForCoder()).components(separatedBy: ".").last!
    }

    var className: String {
        NSStringFromClass(self.classForCoder).components(separatedBy: ".").last!
    }
    
    }
    
    /// 네비게이션바 Left Back Button Custom
    func backButtonCustom() {
        let backBtnIcon = UIImage(named: "icn_back")
        self.navigationController?.navigationBar.backIndicatorImage = backBtnIcon
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = backBtnIcon
        self.navigationItem.backButtonTitle = ""
    }
}
