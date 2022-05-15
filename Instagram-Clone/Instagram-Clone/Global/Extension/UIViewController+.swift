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
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    /// 로그인, 회원가입 성공 시 띄우는 alert 함수입니다.
    func alertAction(title: String, message: String, okAction: ((UIAlertAction) -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: "Instagram에 오신 것을 환영합니다.", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인", style: .default, handler: { action in
            if message == "로그인 성공" {
                guard let TabBarMainVC = UIStoryboard(name: "TabBarMain", bundle: nil).instantiateViewController(withIdentifier: TabBarMainViewController.className) as? TabBarMainViewController else { return }
                
                /// 루트 뷰 컨트롤러 변경 및 애니메이션 효과
                guard let uWindow = self.view.window else { return }
                uWindow.rootViewController = TabBarMainVC
                uWindow.makeKey()
                UIView.transition(with: uWindow, duration: 0.5, options: [.transitionCrossDissolve], animations: {}, completion: nil)
            } else if message == "회원가입 성공" {
                guard let loginVC = UIStoryboard(name: "Login", bundle: nil).instantiateViewController(withIdentifier: LoginViewController.className) as? LoginViewController else { return }
                loginVC.modalPresentationStyle = .fullScreen
                self.present(loginVC, animated: true, completion: nil)
            }
        })
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    /// 기본 alert 함수입니다.
    func alert(title: String, message: String) {
        let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "확인", style: .default, handler: nil))
        present(alertVC, animated: true)
    }
}
