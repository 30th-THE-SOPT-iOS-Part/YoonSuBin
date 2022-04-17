//
//  AuthCompleteViewController.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/07.
//

import UIKit

class AuthCompleteViewController:
    UIViewController {
    
    // MARK: - Var & Let Part
    var userName: String?
    
    // MARK: - UI Component Part
    @IBOutlet weak var welcomeMessage: UILabel!
    @IBOutlet weak var completeButton: UIButton!
    @IBOutlet weak var addAccountButton: UIButton!
    
    // MARK: - Life Cycle Part
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        setUserName()
    }
    
    // MARK: - IBAction Part
    @IBAction func completeBtnDidTap(_ sender: Any) {
        /// present
        guard let tapBarMainVC = UIStoryboard(name: "TabBarMain", bundle: nil).instantiateViewController(withIdentifier: "TabBarMainViewController") as? TabBarMainViewController else { return }
        
        tapBarMainVC.modalPresentationStyle = .fullScreen
        self.present(tapBarMainVC, animated: true, completion: nil)

    }
    
    @IBAction func addAccountBtnDidTap(_ sender: Any) {
        /// dismiss
        self.dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Custom UI
    private func setUI() {
        /// Button
        completeButton.layer.cornerRadius = 5
    }
    
    // MARK: - Custom Method Part
    private func setUserName() {
        if let userName = userName {
            welcomeMessage.text = "\(userName)님, Instagram에 오신 것을 환영합니다"
            self.welcomeMessage.numberOfLines = 2
        }
    }
}
