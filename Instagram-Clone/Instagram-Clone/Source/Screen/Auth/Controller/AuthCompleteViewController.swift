//
//  AuthCompleteViewController.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/07.
//

import UIKit

final class AuthCompleteViewController: UIViewController {
    
    // MARK: - Properties
    var userName: String?
    var userPassword: String?
    
    // MARK: - UI Component Part
    @IBOutlet weak var welcomeMessageLabel: UILabel!
    @IBOutlet weak var completeButton: UIButton!
    @IBOutlet weak var addAccountButton: UIButton!
    
    // MARK: - Life Cycle Part
    override func viewDidLoad() {
        super.viewDidLoad()
        setUserName()
    }
    
    // MARK: - IBAction Part
    @IBAction func completeBtnDidTap(_ sender: Any) {
        requestSignUp()
    }
    
    @IBAction func addAccountBtnDidTap(_ sender: Any) {
        /// dismiss
        self.dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Custom Method Part
    private func setUserName() {
        if let userName = userName {
            welcomeMessageLabel.text = "\(userName)님, Instagram에 오신 것을 환영합니다"
        }
    }
}

// MARK: - API: Auth SignUp Service
extension AuthCompleteViewController {
    func requestSignUp() {
        guard let name = userName else { return }
        guard let password = userPassword else { return }
        
        AuthService.shared.signup(
            name: name,
            email: name,
            password: password) { [weak self] responseData in
                switch responseData {
                case .success(let signupResponse):
                    guard let response = signupResponse as? SignUpResponse else { return }
                    if response.data != nil {
                        self?.alertAction(title: "회원가입 성공", message: response.message, okAction: nil)
                    }
                case .requestErr(_):
                    self?.alert(title: "회원가입 실패", message: "이미 등록된 유저가 존재합니다.")
                case .pathErr:
                    self?.alert(title: "회원가입 실패", message: "PATH ERROR")
                case .serverErr:
                    print("SERVER ERROR")
                case .networkFail:
                    print("NETWORK FAIL")
                }
            }
    }
}
