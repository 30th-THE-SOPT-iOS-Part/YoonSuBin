//
//  SignUpNameViewController.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/07.
//

import UIKit

class SignUpNameViewController:
    UIViewController {
    
    // MARK: -
    @IBOutlet weak var nameMessage: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNameMessage()
        setupNextBtn()
        checkTextField()
    }
    
    @IBAction func nextBtnDidTap(_ sender: Any) {
        guard let signUpPasswordVC = self.storyboard?.instantiateViewController(withIdentifier: "SignUpPasswordViewController") as? SignUpPasswordViewController else { return }
        
        signUpPasswordVC.userName = nameTextField.text
        
        self.navigationController?.pushViewController(signUpPasswordVC, animated: true)
    }
    
    @IBAction func editNameTF(_ sender: Any) {
        checkTextField()
    }
    
    private func setNameMessage() {
        nameMessage.text = "새 계정에 사용할 사용자 이름을 선택하세요. 나중에 언제든지 변경할 수 있습니다."
        self.nameMessage.numberOfLines = 0
        nameMessage.sizeToFit()
    }
    
    private func setupNextBtn() {
        nextButton.setTitleColor(.white, for: .normal)
        nextButton.setTitleColor(.white, for: .disabled)
    }
    
    // MARK: - Custom Method Part
    private func checkTextField() {
    
        if nameTextField.hasText {
            nextButton.isEnabled = true
            nextButton.backgroundColor = UIColor(named: "sky_blue")
        }
        else {
            nextButton.isEnabled = false
            nextButton.backgroundColor = UIColor(named: "light_blue")
        }
    }
}
