//
//  SignUpPasswordViewController.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/07.
//

import UIKit

class SignUpPasswordViewController:
    UIViewController {
    
    // MARK: - Var & Let Part
    var userName : String?
    
    // MARK: - UI Component Part
    @IBOutlet weak var passwordMessageLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var showPasswordButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    // MARK: - Life Cycle Part
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        checkTextField()
    }
    
    // MARK: - IBAction Part
    @IBAction func nextBtnDidTap(_ sender: Any) {
        /// pop
        guard let authCompleteVC = UIStoryboard(name: "AuthComplete", bundle: nil).instantiateViewController(withIdentifier: "AuthCompleteViewController") as? AuthCompleteViewController else { return }
        
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
    
    // MARK: - Custom UI
    private func setUI() {
        /// Button
        nextButton.layer.cornerRadius = 5
        nextButton.setTitleColor(.white, for: .normal)
        nextButton.setTitleColor(.white, for: .disabled)
        
        /// TextField
        passwordTextField.attributedPlaceholder  = NSAttributedString(string: "비밀번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.darkGrey as Any])
        
        /// Label
        passwordMessageLabel.text = "비밀번호를 저장할 수 있으므로 iCloud® 기기에서 로그인 정보를 입력하지 않아도 됩니다."
        self.passwordMessageLabel.numberOfLines = 2
    }
    
    // MARK: - Custom Method Part
    private func checkTextField() {
        
        if passwordTextField.hasText {
            nextButton.isEnabled = true
            nextButton.backgroundColor = UIColor.skyBlue
        }
        else {
            nextButton.isEnabled = false
            nextButton.backgroundColor = UIColor.lightBlue
        }
    }
}
