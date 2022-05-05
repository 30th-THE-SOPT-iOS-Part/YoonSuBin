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
    }
    
    // MARK: - IBAction Part
    @IBAction func showPasswordBtnDidTap(_ sender: UIButton) {
        sender.isSelected.toggle()
        passwordTextField.isSecureTextEntry = !sender.isSelected
    }
    
    @IBAction func loginBtnDidTap(_ sender: Any) {
        /// present
        guard let authCompleteVC = UIStoryboard(name: "AuthComplete", bundle: nil).instantiateViewController(withIdentifier: "AuthCompleteViewController") as? AuthCompleteViewController else { return }
        
        authCompleteVC.userName = nameTextField.text

        authCompleteVC.modalPresentationStyle = .fullScreen
        self.present(authCompleteVC, animated: true, completion: nil)
    }
    
    @IBAction func signUpBtnDidTap(_ sender: Any) {
        /// push
        guard let signUpNameVC = UIStoryboard(name: "SignUp", bundle: nil).instantiateViewController(withIdentifier: "SignUpNameViewController") as? SignUpNameViewController else { return }
        
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
        loginButton.layer.cornerRadius = 5
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.setTitleColor(.white, for: .disabled)
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
