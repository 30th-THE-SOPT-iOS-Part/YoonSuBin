//
//  LoginViewController.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/07.
//

import UIKit

class LoginViewController:
    UIViewController {

    // MARK: -

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var showPasswordButton: UIButton!
    @IBOutlet weak var findPasswordButton: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLoginBtn()
        checkTextField()
        setBackBtn()
    }
    
    @IBAction func showPasswordBtnDidTap(_ sender: UIButton) {
        sender.isSelected.toggle()
        passwordTextField.isSecureTextEntry = !sender.isSelected
    }
    
    @IBAction func loginBtnDidTap(_ sender: Any) {
        guard let authCompleteVC = self.storyboard?.instantiateViewController(withIdentifier: "AuthCompleteViewController") as? AuthCompleteViewController else { return }
        
        authCompleteVC.modalPresentationStyle = .fullScreen
        authCompleteVC.modalTransitionStyle = .crossDissolve
        
        authCompleteVC.message = nameTextField.text
        
        self.present(authCompleteVC, animated: true, completion: nil)
    }
    
    @IBAction func signUpBtnDidTap(_ sender: Any) {
        guard let signUpNameVC = self.storyboard?.instantiateViewController(withIdentifier: "SignUpNameViewController") as? SignUpNameViewController else { return }
        
        self.navigationController?.pushViewController(signUpNameVC, animated: true)
    }
    
    @IBAction func editNameTF(_ sender: Any) {
        checkTextField()
    }
    
    @IBAction func editPasswordTF(_ sender: Any) {
        checkTextField()
    }
    
    private func setupLoginBtn() {
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.setTitleColor(.white, for: .disabled)
    }
    
    private func checkTextField() {
        
        nameTextField.clearButtonMode = .whileEditing
        
        if (nameTextField.hasText && passwordTextField.hasText) {
            loginButton.isEnabled = true
            loginButton.backgroundColor = UIColor(displayP3Red: 55/255, green: 151/255, blue: 239/255, alpha: 1)
            
        } else {
            loginButton.isEnabled = false
            loginButton.backgroundColor = UIColor(displayP3Red: 149/255, green: 200/255, blue: 248/255, alpha: 1)
        }
    }
    
    func setBackBtn() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem?.tintColor = .gray
    }
}
