//
//  SignUpNameVC.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/07.
//

import UIKit

class SignUpNameVC: UIViewController {
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
        guard let goToNextVC = self.storyboard?.instantiateViewController(withIdentifier: "SignUpPasswordVC") as? SignUpPasswordVC else { return }
        goToNextVC.messageName = nameTextField.text
        self.navigationController?.pushViewController(goToNextVC, animated: true)
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
        nextButton.isEnabled = false
        nextButton.setTitle("다음", for: .normal)
        nextButton.setTitleColor(.white, for: .normal)
        nextButton.setTitleColor(.white, for: .disabled)
    }
    
    private func checkTextField() {
        nextButton.isEnabled = false
        
        if nameTextField.hasText {
            nextButton.isEnabled = true
            
        } else {
            nextButton.isEnabled = false
            nextButton.backgroundColor = UIColor(displayP3Red: 155/255, green: 203/255, blue: 247/255, alpha: 1)
            nextButton.setTitleColor(UIColor.white, for: .normal)
        }
    }
    
    private func setBackBtn() {
        navigationItem.backBarButtonItem = UIBarButtonItem( title: "", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem?.tintColor = .gray
    }
}
