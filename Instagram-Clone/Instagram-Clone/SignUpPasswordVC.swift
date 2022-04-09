//
//  SignUpPasswordVC.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/07.
//

import UIKit

class SignUpPasswordVC: UIViewController {
    
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
        guard let goToNextVC = self.storyboard?.instantiateViewController(withIdentifier: "SignUpCompleteVC") as? SignUpCompleteVC else { return }
        goToNextVC.message = messageName
        self.present(goToNextVC, animated: true) {
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
        nextButton.isEnabled = false
        nextButton.setTitle("다음", for: .normal)
        nextButton.setTitleColor(.white, for: .normal)
        nextButton.setTitleColor(.white, for: .disabled)
    }
    
    private func checkTextField() {
        nextButton.isEnabled = false
        
        if passwordTextField.hasText {
            nextButton.isEnabled = true
            
        } else {
            nextButton.isEnabled = false
            nextButton.backgroundColor = UIColor(displayP3Red: 155/255, green: 203/255, blue: 247/255, alpha: 1)
        }
    }
    
    private func setBackBtn() {
        navigationItem.backBarButtonItem = UIBarButtonItem( title: "", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem?.tintColor = .gray
    }
}
