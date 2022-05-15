//
//  SignUpPasswordViewController.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/07.
//

import UIKit

final class SignUpPasswordViewController: UIViewController {
    
    // MARK: - Properties
    var userName : String?
    
    // MARK: - UI Component Part
    @IBOutlet weak var passwordMessageLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var showPasswordButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    // MARK: - Life Cycle Part
    override func viewDidLoad() {
        super.viewDidLoad()
        checkTextField()
        hideKeyboardWhenTappedAround()
    }
    
    // MARK: - IBAction Part
    @IBAction func nextBtnDidTap(_ sender: Any) {
        /// pop
        guard let authCompleteVC = UIStoryboard(name: "AuthComplete", bundle: nil).instantiateViewController(withIdentifier: AuthCompleteViewController.className) as? AuthCompleteViewController else { return }
        
        authCompleteVC.userName = userName
        
        self.present(authCompleteVC, animated: true) {
            self.navigationController?.popToRootViewController(animated: false)
        }
    }
    
    
    @IBAction func editPassewordTF(_ sender: Any) {
        checkTextField()
    }
    
    @IBAction func showPasswordBtnDidTap(_ sender: UIButton) {
        sender.isSelected.toggle()
        passwordTextField.isSecureTextEntry = !sender.isSelected
    }
    
    // MARK: - Custom Method Part
    private func checkTextField() {
        /// passwordTextField가 채워져있는 지 확인하는 함수입니다.
        nextButton.isEnabled = passwordTextField.hasText
        nextButton.backgroundColor = passwordTextField.hasText ? UIColor.skyBlue : UIColor.lightBlue
    }
}
