//
//  SignUpPasswordViewController.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/07.
//

import UIKit

class SignUpPasswordViewController:
    UIViewController {
    
    // MARK: -
    var userName : String?

    @IBOutlet weak var passwordMessage: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var showPasswordButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setPasswordMessage()
        setupNextBtn()
        checkTextField()
    }
    
    @IBAction func nextBtnDidTap(_ sender: Any) {
        guard let authCompleteVC = self.storyboard?.instantiateViewController(withIdentifier: "AuthCompleteViewController") as? AuthCompleteViewController else { return }
        
        authCompleteVC.userName = userName
        
        self.present(authCompleteVC, animated: true) {
            self.navigationController?.popToRootViewController(animated: false)
        }
    }
    
    @IBAction func editPassewordTF(_ sender: Any) {
        checkTextField()
    }
    
    private func setPasswordMessage() {
        sender.isSelected.toggle()
        passwordTextField.isSecureTextEntry = !sender.isSelected
        passwordMessage.sizeToFit()
    }
    
    private func setupNextBtn() {
        nextButton.setTitleColor(.white, for: .normal)
        nextButton.setTitleColor(.white, for: .disabled)
    }
    
    @objc private func checkTextField() {
    
        if let passwordTextField = passwordTextField.text {
            if !passwordTextField.isEmpty {
                nextButton.isEnabled = true
            nextButton.backgroundColor = UIColor(named: "sky_blue")
            }
            else {
                nextButton.isEnabled = false
            nextButton.backgroundColor = UIColor(named: "light_blue")
            }
    }
}
