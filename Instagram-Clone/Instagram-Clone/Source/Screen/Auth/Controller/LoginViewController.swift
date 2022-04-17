//
//  LoginViewController.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/07.
//

import UIKit

class LoginViewController:
    UIViewController {

    // MARK: - UI Component Part
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var showPasswordButton: UIButton!
    @IBOutlet weak var findPasswordButton: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    // MARK: - Life Cycle Part
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        checkTextField()
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
        
        deleteAccount()
    }
    
    @IBAction func signUpBtnDidTap(_ sender: Any) {
        /// push
        guard let signUpNameVC = UIStoryboard(name: "SignUp", bundle: nil).instantiateViewController(withIdentifier: "SignUpNameViewController") as? SignUpNameViewController else { return }
        
        self.navigationController?.pushViewController(signUpNameVC, animated: true)
        
        deleteAccount()
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
        nameTextField.attributedPlaceholder = NSAttributedString(string: "전화번호, 사용자 이름 또는 이메일", attributes: [NSAttributedString.Key.foregroundColor : UIColor(named: "dark_grey")!])
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor(named: "dark_grey")!])
    }
    
    // MARK: - Custom Method Part
    private func checkTextField() {
        
        if (nameTextField.hasText && passwordTextField.hasText) {
            loginButton.isEnabled = true
            loginButton.backgroundColor = UIColor(named: "sky_blue")
            
        } else {
            loginButton.isEnabled = false
            loginButton.backgroundColor = UIColor(named: "light_blue")
        }
    }
    
    private func deleteAccount() {
        nameTextField.attributedText = .none
        passwordTextField.attributedText = .none
        
        loginButton.isEnabled = false
        loginButton.backgroundColor = UIColor(named: "light_blue")
    }
}
