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
        setBackBtn()
    }
    
    @IBAction func nextBtnDidTap(_ sender: Any) {
        guard let signUpPasswordVC = self.storyboard?.instantiateViewController(withIdentifier: "SignUpPasswordViewController") as? SignUpPasswordViewController else { return }
        signUpPasswordVC.messageName = nameTextField.text
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
    
    @objc private func checkTextField() {
    
        if let nameTextField = nameTextField.text {
            if !nameTextField.isEmpty {
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
