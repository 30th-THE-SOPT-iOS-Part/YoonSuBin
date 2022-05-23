//
//  LoginViewController.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/07.
//

import UIKit

final class LoginViewController: UIViewController {

    // MARK: - UI Component Part
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var showPasswordButton: UIButton!
    @IBOutlet weak var findPasswordButton: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    // MARK: - Life Cycle Part
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        checkAccount()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        hideKeyboardWhenTappedAround()
    }
    
    // MARK: - IBAction Part
    @IBAction func showPasswordBtnDidTap(_ sender: UIButton) {
        sender.isSelected.toggle()
        passwordTextField.isSecureTextEntry = !sender.isSelected
    }
    
    @IBAction func loginBtnDidTap(_ sender: Any) {
        requestLogin()
    }
    
    @IBAction func signUpBtnDidTap(_ sender: Any) {
        /// push
        guard let signUpNameVC = UIStoryboard(name: "SignUp", bundle: nil).instantiateViewController(withIdentifier: SignUpNameViewController.className) as? SignUpNameViewController else { return }
        
        self.navigationController?.pushViewController(signUpNameVC, animated: true)
    }
    
    @IBAction func editNameTF(_ sender: Any) {
        checkTextField()
    }

    @IBAction func editPasswordTF(_ sender: Any) {
        checkTextField()
    }
    
    // MARK: - Custom UI
    private func setUI() {
        /// Button
        backButtonCustom()
        
        /// TextField
        nameTextField.clearButtonMode = .whileEditing
    }
    
    // MARK: - Custom Method Part
    private func checkTextField() {
        /// 모든 텍스트 필드가 채워져있는 지 확인하는 함수입니다.
        loginButton.isEnabled = (nameTextField.hasText) && (passwordTextField.hasText)
        loginButton.backgroundColor = (nameTextField.hasText) && (passwordTextField.hasText) ? UIColor.skyBlue : UIColor.lightBlue
    }
    
    private func checkAccount() {
        /// Account 작성 상태를 초기화하고 체크하는 함수입니다.
        nameTextField.attributedText = .none
        passwordTextField.attributedText = .none
        
        loginButton.isEnabled = false
        loginButton.backgroundColor = UIColor.lightBlue
    }
}

// MARK: - API: Auth Login Service
extension LoginViewController {
    func requestLogin() {
        guard let name = nameTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        AuthService.shared.login(
            name: name,
            email: name,
            password: password) { [weak self] responseData in
                switch responseData {
                case .success(let loginResponse):
                    guard let response = loginResponse as? LoginResponse else { return }
                    if response.data != nil {
                        self?.alertAction(title: "로그인 성공", message: response.message, okAction: nil)
                    }
                case .requestErr(let loginResponse):
                    guard let response = loginResponse as? LoginResponse else { return }
                    let statusCode = response.status
                    if statusCode == 404 {
                        self?.alert(title: "로그인 실패", message: "이메일에 해당하는 사용자 정보가 없습니다.")
                    } else {
                        self?.alert(title: "로그인 실패", message: "잘못된 비밀번호입니다.")
                    }
                case .pathErr:
                    self?.alert(title: "로그인 실패", message: "PATH ERROR")
                case .serverErr:
                    print("SERVER ERROR")
                case .networkFail:
                    print("NETWORK FAIL")
                }
            }
    }
}
