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
    
    /// 네비게이션바 Left Back Button Custom
    func backButtonCustom() {
        let backBtnIcon = UIImage(named: "icn_back")
        self.navigationController?.navigationBar.backIndicatorImage = backBtnIcon
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = backBtnIcon
        self.navigationItem.backButtonTitle = ""
    }
    /// 빈 화면 클릭 시 키보드가 내려가는 함수입니다.
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
    @objc
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
}
