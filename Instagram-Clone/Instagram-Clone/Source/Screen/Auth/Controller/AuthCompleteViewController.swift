//
//  AuthCompleteViewController.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/07.
//

import UIKit

class AuthCompleteViewController:
    UIViewController {
    
    // MARK: -
    @IBOutlet weak var welcomeMessage: UILabel!
    
    // MARK: - Life Cycle Part
    override func viewDidLoad() {
        super.viewDidLoad()
        setName()
        setUserName()
    }
    
    @IBAction func completeBtnDidTap(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    private func setName() {
        if let message = message {
            welcomeMessage.text = "\(message)님, Instagram에 오신 것을 환영합니다"
            self.welcomeMessage.numberOfLines = 0
            welcomeMessage.sizeToFit()
    
    // MARK: - Custom Method Part
    private func setUserName() {
        if let userName = userName {
            welcomeMessage.text = "\(userName)님, Instagram에 오신 것을 환영합니다"
            self.welcomeMessage.numberOfLines = 2
        }
    }
}
