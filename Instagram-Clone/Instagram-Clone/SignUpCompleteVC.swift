//
//  SignUpCompleteVC.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/07.
//

import UIKit

class SignUpCompleteVC: UIViewController {

    @IBOutlet weak var welcomeMessage: UILabel!
    
    var message: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setName()
    }
    
    @IBAction func completeBtnDidTap(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    private func setName() {
        if let message = message {
            welcomeMessage.text = "\(message)님, Instagram에 오신 것을 환영합니다"
            self.welcomeMessage.numberOfLines = 0
            welcomeMessage.sizeToFit()
        }
    }
}
