//
//  SignUpNameViewController.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/07.
//

import UIKit

final class SignUpNameViewController: UIViewController {
    
    // MARK: - UI Component Part
    @IBOutlet weak var nameMessageLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    
    // MARK: - Life Cycle Part
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        checkTextField()
    }
    
    // MARK: - IBAction Part
    @IBAction func nextBtnDidTap(_ sender: Any) {
        /// push
        guard let signUpPasswordVC = UIStoryboard(name: "SignUp", bundle: nil).instantiateViewController(withIdentifier: "SignUpPasswordViewController") as? SignUpPasswordViewController else { return }
        
        signUpPasswordVC.userName = nameTextField.text
        
        self.navigationController?.pushViewController(signUpPasswordVC, animated: true)
    }
    
    @IBAction func editNameTF(_ sender: Any) {
        checkTextField()
    }
    
    // MARK: - Custom UI
    private func setUI() {
        /// Button
        backButtonCustom()
    }
    
    // MARK: - Custom Method Part
    private func checkTextField() {
        /// nameTextField가 채워져있는 지 확인하는 함수입니다.
        nextButton.isEnabled = nameTextField.hasText
        nextButton.backgroundColor = nameTextField.hasText ? UIColor.skyBlue : UIColor.lightBlue
    }
}
