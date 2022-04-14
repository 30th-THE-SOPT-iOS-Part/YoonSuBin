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
    var messageName : String?

    @IBOutlet weak var passwordMessage: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setPasswordMessage()
        setupNextBtn()
        checkTextField()
        setBackBtn()
    }
    
    @IBAction func nextBtnDidTap(_ sender: Any) {
        guard let authCompleteVC = self.storyboard?.instantiateViewController(withIdentifier: "AuthCompleteViewController") as? AuthCompleteViewController else { return }
        authCompleteVC.message = messageName
        self.present(authCompleteVC, animated: true) {
            self.navigationController?.popToRootViewController(animated: false)
        }
    }
    
    @IBAction func editPassewordTF(_ sender: Any) {
        checkTextField()
    }
    
    private func setPasswordMessage() {
        passwordMessage.text = "비밀번호를 저장할 수 있으므로 iCloud® 기기에서 로그인 정보를 입력하지 않아도 됩니다."
        self.passwordMessage.numberOfLines = 0
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
                nextButton.backgroundColor = UIColor(displayP3Red: 55/255, green: 151/255, blue: 239/255, alpha: 1)
            }
            else {
                nextButton.isEnabled = false
                nextButton.backgroundColor = UIColor(displayP3Red: 149/255, green: 200/255, blue: 248/255, alpha: 1)
            }
        }
    }
    
    private func setBackBtn() {
        navigationItem.backBarButtonItem = UIBarButtonItem( title: "", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem?.tintColor = .gray
    }
}